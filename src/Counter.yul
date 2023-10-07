object "Counter_Yul" {
  code {
    datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
    return(0, datasize("Runtime"))
  }
  object "Runtime" {
    code {
      switch shr(224, calldataload(0))
      case 0x3fb5c1cb { // setNumber
          sstore(0, calldataload(4))
          return(0, 0)
      }
      case 0xd09de08a { // increment
          let val := sload(0)
          sstore(0, add(val, 1))
          return(0, 0)
      }
      case 0xf2c9ecd8 { // getNumber
          let _3 := sload(0)
          let memPos := mload(64)
          mstore(memPos, _3)
          return(memPos, 32)
      }
      revert(0, 0)
    }
  }
}