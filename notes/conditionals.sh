echo 'hello'

if [ 3 -eq 3 ]; then 
    echo 'they are the same'
fi

echo 'continue'

echo "-------------------------------*"

read -p 'how old are u? ' age

if [ $age -gt 50 ]; then
    echo 'you are not very young'
else
    echo 'u are still young'
fi

echo "bye"

# elif = else if
# -e = exists
# Para negar se utiliza !