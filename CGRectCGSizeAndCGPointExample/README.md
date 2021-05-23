# What is CGPoint, CGSize and CGRect ?

- - -

<img width="400" alt="SimulatorImage" src="https://github.com/VincentGeranium/iOS_Study/blob/master/Images/ExplainImage.png?raw=true">

- - -

## 1. CGPoint

### CGPoint Definition
-  2차원 좌표계의 점(x, y)을 가지고 있는 구조체.

- - -

## 2. CGSize

### CGSize Definition
- 너비와 높의 값을 가지고 있는 구조체.
    - c.f : CGSize는 실제로 사각형으로 간주되지 않음, 그저 "너비와 높이의 값"일뿐.

- - -

## 3. CGRect

### CGRect Definition
- 사각형의 위치와 치수를 가지고 있는 구조체.
- 원점(origin)을 가지고 있다.

- - -

## Simulator Image

<img width="200" alt="SimulatorImage" src="https://github.com/VincentGeranium/iOS_Study/blob/master/Images/SimulatorImage.png?raw=true">

- 위치 = CGPoint
    - origin (x, y)
- 크기 = CGSize
    - width
    - height
- 사각형 = CGRect
    - 위치 = CGPoint (x,y)
    - 크기 = CGSize (width, height)

- - -
