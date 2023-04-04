// move_semantics4.cairo
// Refactor this code so that instead of passing `arr0` into the `fill_arr` function,
// the Array gets created in the function itself and passed back to the main
// function.
// Execute `starklings hint move_semantics4` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use array::ArrayTCloneImpl;
use array::SpanTrait;
use clone::Clone;
use debug::PrintTrait;

fn main() {
    let arr0 = ArrayTrait::<felt252>::new();

    let mut arr1 = fill_arr();

    arr1.span().snapshot.clone().print();

    arr1.append(88);

    arr1.span().snapshot.clone().print();
}

fn fill_arr() -> Array<felt252> {

    let arr0 = ArrayTrait::<felt252>::new();
    let mut arr = arr0  ;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
