package com.bit.springboard.controller.coupling;

public class CarOwner {
    public static void main(String[] args) {
        // 의존성이 두 개가 생기면서 결합도가 높아진다.
        // 또 다른 클래스 변수가 생기면 계속해서 결합도가 높아질 수밖에 없는 구조이다.
        // 결합도를 낮추기 위해서는 인터페이스 상속 -> 부모 호출
        KiaCar kiaCar = new KiaCar();
        HyundaiCar hyundaiCar = new HyundaiCar();

        kiaCar.engineOn();
        kiaCar.engineOff();
        kiaCar.speedUp();
        kiaCar.speedDown();

        hyundaiCar.engineOn();
        hyundaiCar.engineOff();
        hyundaiCar.speedUp();
        hyundaiCar.speedDown();
    }
}
