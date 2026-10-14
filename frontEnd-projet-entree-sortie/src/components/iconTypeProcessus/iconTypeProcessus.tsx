import { ArrowLeftRight, UserMinus, UserPlus, Users } from "lucide-react"
import { Button } from "../ui/button"
import type { JSX } from "react"


export const getIconEntree= () : JSX.Element => {
    return (<Button className="bg-green-500" size={"icon"}>
        <UserPlus/>
    </Button>)
}

export const getIconSortie = () : JSX.Element => {
    return (<Button className="bg-red-500" size={"icon"}>
        <UserMinus/>
    </Button>)
}

export const getIconMobiliteInterne = () : JSX.Element  => {
    return (<Button className="bg-amber-500" size={"icon"}>
        <ArrowLeftRight/>
    </Button>)
}

export const getIconAllProcess = () : JSX.Element  =>{
    return (<Button className="bg-blue-500" size={"icon"}>
        <Users/>
    </Button>)
}
