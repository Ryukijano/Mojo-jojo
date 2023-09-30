
let a: OurBool

struct OurBool:
    var value: __mlir_type.il

    fn__init__(inout self):
        self.value = __mlir.op.'index.bool.constant'[
            value : __mlir_attr.'false',
        ] ()

let b = OurBool()

@register_passable("trivial")
struct OurBool:
    var value: __mlir_type.il

    fn __init__(value: __mlir_type.il) -> Self:
        return Self{value: value}

