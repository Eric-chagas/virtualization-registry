package main
import(
    "fmt"
)

func main() {
    fmt.Println("Enter your hallowed be thy name: ")
    var name string
    fmt.Scanln(&name)
    fmt.Printf("H3llo fri3nd, %s. I am the destroyer of worlds.", name)
}
