# CASE

the case command check severals cases that can occur on a variable. It simplify the use of if-then-elif

## Syntax

```
case var in
    valor1)
        commands1;;
    valor2)
        commands2;;
    valor3 | valor4)
        commands3;;
    *)
        command default;;
esac
```

## Example

```
direction=north

case $direction in
    north)
        echo "the direction is north";;
    south)
        echo "the direction is south";;
    west)
        echo "the direction is west";;
    east)
        echo "the direction is east";;
    *)
        echo "invalid direction";;
esac
```