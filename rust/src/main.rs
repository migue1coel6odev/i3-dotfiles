use dialoguer::{Confirm, MultiSelect};

fn main() {
    // let answer = Confirm::new()
    //     .with_prompt("Want to install cenas ? ")
    //     .interact()
    //     .unwrap_or(true);

    // if answer {
    //     println!("Yes you want");
    // } else {
    //     println!("No you dont");
    // }

    let items = vec!["foo", "bar", "baz"];
    let defaults = vec![true, true];


    let selection = MultiSelect::new()
        .with_prompt("What do you choose?")
        .items(&items)
        .defaults(&defaults)
        .interact()
        .unwrap();

    println!("You chose:");

    for i in selection {
        println!("{}", items[i]);
    }
}
