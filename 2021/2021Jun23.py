#!/usr/bin/env python3
##
## Given a mathematical expression with just single digits, plus signs, negative signs, and brackets, evaluate the expression. Assume the expression is properly formed.
## 
## Example:
## Input: - ( 3 + ( 2 - 1 ) )
## Output: -4
## Here's the function signature:
## 


def compute(expression):
    if len(expression) == 1:
        return expression[0]
    
    if expression[0] == '-':
        elem = -1*float(expression[1])
        expression = [str(elem)] + expression[2:]
    
    new = expression
    if '*' in new:
        ix = new.index('*')
        res = float(new[ix-1]) * float(new[ix+1])
        return compute(new[:ix-1]+[str(res)]+new[ix+2:])
    if '/' in new:
        ix = new.index('/')
        res = float(new[ix-1]) / float(new[ix+1])
        return compute(new[:ix-1]+[str(res)]+new[ix+2:])
    if '-' in new:
        ix = new.index('-')
        res = float(new[ix-1]) - float(new[ix+1])
        return compute(new[:ix-1]+[str(res)]+new[ix+2:])
    if '+' in new:
        ix = new.index('+')
        res = float(new[ix-1]) + float(new[ix+1])
        return compute(new[:ix-1]+[str(res)]+new[ix+2:])
         
def subNest(expression):
    if expression == ' ':
        return str(0)

    # convert to a list where each element is an operator or a number
    expr = []
    num = ''
    for ni, i in enumerate(expression):
        if i == '-' or i == '+' or i == '*' or i == '/':
            if num != '':
                expr.append(num)
                num = ''
            expr.append(i)
        else:
            num += i
    if num != '':
        expr.append(num)

    # compute the operations is expr list
    

    return compute(expr)

def eval(expression):
    # Fill this in.
    try:
        res = float(expression)
        return res
    except:

        if expression == '':
            return 0
        elif type(expression) == int or type(expression) == float:
            return float(expression)

        # remove spaces from expression
        expr = ''
        for i in expression:
            if i != ' ':
                expr += i

        # compute chunks
        new = ''
        left = 0
        for ni, i in enumerate(expr):
            new += i
            if i == '(':
                left = ni+1
            elif i == ')':
                chunk = subNest(new[left:ni])
                return eval((expr[:left-1]+chunk+expr[ni+1:]))


print(eval('- (3 + ( 2 - 1 ) + ((3+10-(4-1))+1)-3)'))
