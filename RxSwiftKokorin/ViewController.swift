//
//  ViewController.swift
//  RxSwiftKokorin
//
//  Created by AlexanderYakovenko on 9/2/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    
    // 1
    enum MyError: Error {
        case anError
    }
    // 2
//    let subject = BehaviorSubject(value: "Initial Value")
//    let disposeBag = DisposeBag()
//    func printOk() {
//        print("ok")
//    }
    
    /*
    func print<T: CustomStringConvertible>(label: String, event: Event<T>) {
        print(label, event.element ?? event.error ?? event)
        //print(label,  event.element ?? event.error ?? event)
        //print(label,  event.element ?? event.error ?? event)
        
    }
    */
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        /*
        
        example("merge") {
            
            
            let firstSeq = Observable.of(1,2,3)
            let secondSeq = Observable.of(4,5,6)
            
            let bothSeq = Observable.of(firstSeq, secondSeq)
            let mergeSeq = bothSeq.merge()
            mergeSeq.subscribe({ (event) in
                print(event)
            })
 
        }
         */
        /*
        example("PublishSubject") {
            
            let disposableBag = DisposeBag()
            let subject = PublishSubject<String>()
            
            subject.subscribe{
                print("Subscription First: ", $0)
            }.addDisposableTo(disposableBag)
            
            subject.on(.next("Hello"))
            subject.onNext("RxSwift")
            
            subject.subscribe(onNext: {
                print("Subscription Second: ", $0)
            }).addDisposableTo(disposableBag)
            
            subject.onNext("Hi!")
            subject.onNext("My name is Sasha")
        }
        */
       
        /*
        example("BehaviorSubject") {
            let disposableBag = DisposeBag()
            let subject = BehaviorSubject(value: 4) //[1]
            
            let firstSubscription = subject.subscribe(onNext: {
                print(#line, $0)
            }).addDisposableTo(disposableBag)
            subject.onNext(2)
            subject.onNext(3)
            
            
            let secondSubscription = subject.subscribe(onNext: {
                print(#line, $0)
            }).addDisposableTo(disposableBag)
            
        }
        */
        /*
        example("ReplaySubject") {
            let disposableBag = DisposeBag()
            let subject = ReplaySubject<String>.create(bufferSize: 3)
            
            subject.subscribe {
                print("First subscription: ", $0)
            }.addDisposableTo(disposableBag)
            
            
            subject.onNext("a")
            subject.onNext("b")
            
            subject.subscribe{
                print("Second subscription: ", $0)
            }.addDisposableTo(disposableBag)
            
            subject.onNext("c")
            subject.onNext("d")
            subject.onNext("e")
            
            subject.subscribe{
                print("third subscription: ", $0)
            }.addDisposableTo(disposableBag)
            
            
        }
        */
        
        /*
        example("Side Effect") {
        let db = DisposeBag()
        let seq = [0,32,100,300]
        let tempSeq = Observable.from(seq)
        
        tempSeq.do(onNext: {
            print("\($0)F = ", terminator: "")
        }).map({
            Double($0 - 32) * 5/9.0
        }).subscribe(onNext: {
            print(String(format: "%.1f", $0))
        }).addDisposableTo(db)
        }
        */
        /*
        example("without observeOn") {
                _ = Observable.of(1,2,3)
                    .subscribe(onNext: {
                        print("\(Thread.current): ", $0)
                    }, onError:
                        nil
                    , onCompleted: {
                        print("Completed")
                    }, onDisposed: nil)
        }
        
        */
        /*
        example("observeOn") {
           _ = Observable.of(1,2,3)
            .observeOn(ConcurrentDispatchQueueScheduler(qos: .background))
            .subscribe(onNext: {
                print("\(Thread.current): ", $0)
            }, onError: nil, onCompleted: {
                print("Completed")
            }, onDisposed: nil)
        }
        */
        /*
        example("subscribeOn and observeOn") {
            let queue1 = DispatchQueue.global(qos: .default)
            let queue2 = DispatchQueue.global(qos: .default)
            
            print("Init Thread: \(Thread.current)")
            _ = Observable<Int>.create({ (observer) -> Disposable in
                print("Observable thread: \(Thread.current)")
                observer.on(.next(1))
                observer.on(.next(2))
                observer.on(.next(3))
                return Disposables.create()
            })
                .subscribeOn(SerialDispatchQueueScheduler(internalSerialQueueName: "queue1"))
                //.observeOn(SerialDispatchQueueScheduler(internalSerialQueueName: "queue2"))
                .subscribe(onNext: {
                    print("Observable thread: \(Thread.current)", $0)
                })
            
        }
        */
        /*
        example("as Observable") {
            let variable = Variable<Int>(0)
            variable.asObservable().subscribe { e in
                print(e)
            }
            variable.value = 1
        }
        */
        /*
        example("just, of , from") {
            
            let one = 1
            let two = 2
            let three = 3
            
            //let observable: Observable<Int> = Observable<Int>.just(one)
            let observable2 = Observable.of(one, two, three)
            observable2.subscribe({ e in
                print(e)
            })
        }
        */
        /*
        example("never") {
            let observable = Observable<Any>.never()
            observable.subscribe( onNext: { element in
                print(element)     },
                    onCompleted: {
                        print("Completed")
            }   )
        }
        */
        /*
        example("range") {
            // 1
            let observable = Observable<Int>.range(start: 1, count: 10)
            observable.subscribe(onNext: { i in
                //2
                let n = Double(i)
                let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n)) / 2.23606).rounded())
                print(fibonacci)
            })
        }
        */
        /*
        example("dispose") {
            let disposeBag = DisposeBag()
           let observable = Observable.of("A", "B", "C")
            let subscription = observable.subscribe({ e in
                print(e)
            })
            subscription.disposed(by: disposeBag)
        }
 */
        /*
        example("deferred") {
            let disposedBag = DisposeBag()
            var flip = false
            let factory: Observable<Int> = Observable.deferred {
                flip = !flip
                if flip {
                    return Observable.of(1, 2, 3)
                } else {
                    return Observable.of(4, 5, 6)
                }
            }
            for _ in 0...3 {
                factory.subscribe(onNext: {
                    print($0, terminator: " ")
                }).disposed(by: disposedBag)
            print()
            }
        }
        */
        /*
        example("PublishSubject") {
            let subject = PublishSubject<String>()
            subject.onNext("Is anyone Listening&")
            let subscriptionOne = subject.subscribe(onNext: { string in
                print(string)
            })
            subject.onNext("1")
            subject.onNext("2")
            let subscriptionTwo = subject.subscribe { event in
                print("2)", event.element ?? event)
            }
            subject.onNext("3")
        
            //subscriptionOne.dispose()
            
            subject.onNext("4")
            
            subject.onCompleted()
            subject.onNext("5")
            subscriptionTwo.dispose()
            let disposeBag = DisposeBag()
            subject.subscribe{
                print("3",  $0.element ?? $0)
            }.disposed(by: disposeBag)
            subject.onNext("?")
            
            
        }
        
        */
        
        
        
        /*
        
        
            // 3
            example("new BehaviorSubject") {
            
                // 4
                
                
                subject.subscribe{
                   // print(label: "1)", event: $0 )
                }.disposed(by: disposeBag)
            
            }
        */
        /*
        example("ignoreElements") {
            let strikes = PublishSubject<String>()
            let disposedBag = DisposeBag()
            strikes
            .ignoreElements()
                .subscribe { _ in
                    print("You're out!")
                }
            .disposed(by: disposedBag)
            
            strikes.onNext("X")
            strikes.onCompleted()
            
        }
         
         
         
         
 */
        
        
        
        
        // CHAPTER 5
        
        
        
        /*
        example("elementAt") {
            let strikes = PublishSubject<String>()
            let disposedBag = DisposeBag()
            strikes
                .elementAt(2)
                .subscribe { _ in
                    print("You're out!")
                }
                .disposed(by: disposedBag)
            strikes.onNext("X")
            strikes.onNext("X")
            strikes.onNext("X")
            strikes.onNext("X")

        }
        
        example("At") {
            let sequence = Observable.of(0,10,20,30,40)
            .elementAt(3)
            sequence.subscribe { e in
                print(e)
            }
        }
        */
        
        /*
        example("filter") {
            let disposedBag = DisposeBag()
            Observable.of(1,2,3,4,5,6)
                .filter{ integer in
                    integer % 2 == 0
                }
                .subscribe(onNext: {
                    print($0)
                }).disposed(by: disposedBag)
        }
        
        example("skip") { // перескакувати
            let disposedBag = DisposeBag()
            Observable.of("A", "B", "c", "d", "e", "f").skip(3).subscribe(onNext: {
                print($0)
            }).disposed(by: disposedBag)
        }
        */
        /*
        example("skipWhile") {
            let disposedBag = DisposeBag()
            Observable.of(1,2,3,4,5,6)
                .skipWhile{ integer in
                    integer < 3
                }
                .subscribe(onNext: {
                    print($0)
                }).disposed(by: disposedBag)
            
           
        }
        */
        /*
        example("skipWhileWithIndex") {
            let disposedBag = DisposeBag()
            Observable.of(1,2,3,4,5,6,7,8,9,10)
                .skipWhileWithIndex{ integer, idx in
                    integer < 7 || idx < 8
                }
                .subscribe(onNext: {
                    print($0)
                }).disposed(by: disposedBag)
            
           
            
        }
        */
        /*
        example("skipUntil") { //поки не станеться trigger
            let disposedBag = DisposeBag()
            
            // 1 
            let subject = PublishSubject<String>()
            let trigger = PublishSubject<String>()
            // 2 
            
            subject
            .skipUntil(trigger)
                .subscribe(onNext: {
                    print($0)
                }).disposed(by: disposedBag)
            subject.onNext("A")
            subject.onNext("B")
            trigger.onNext("C")
            subject.onNext("C")
        }
        */
        /*
        example("take"){ // бере перші 5
            let disposedBag = DisposeBag()
            Observable.of(1,2,3,4,5,6,7,8,9,10)
            .take(5)
                .subscribe(onNext: {
                    print($0)
                }).disposed(by: disposedBag)
        }
        */
        
        /*
        example("takeWhileWithIndex") { // index begin with 0
            let disposeBag = DisposeBag()
            // 1
            Observable.of(2, 2, 4, 4, 6, 6)
                // 2
                .takeWhileWithIndex { integer, index in
                    // 3
                    
                    integer % 2 == 0 && index < 3
                }
                // 4
                .subscribe(onNext: {
                    print($0)
                })
                .disposed(by: disposeBag)
        }
        */
        /*
        example("takeUntil") { // перестає приймати після trigger
            let disposeBag = DisposeBag()
            // 1
            let subject = PublishSubject<String>()
            let trigger = PublishSubject<String>()
            // 2
            subject
                .takeUntil(trigger)
                .subscribe(onNext: {
                    print($0) })
            
            .disposed(by: disposeBag)
            // 3
            subject.onNext("1")
            subject.onNext("2")
            trigger.onNext("X")
            subject.onNext("3")
        }
        */
        /*
        example( "distinctUntilChanged") {
            let disposeBag = DisposeBag()
            // 1
            Observable.of("A", "A", "B", "B", "A")
                // 2
                .distinctUntilChanged()
                .subscribe(onNext: {
                    print($0) })
                .disposed(by: disposeBag)
        }
        */
        /*
        example( "distinctUntilChanged(_:)") {
            let disposeBag = DisposeBag()
            // 1
            let formatter = NumberFormatter()
            formatter.numberStyle = .spellOut
            // 2
            Observable<NSNumber>.of(10, 110, 20, 200, 210, 310)
                // 3
                .distinctUntilChanged { a, b in
                    // 4
                    guard let aWords = formatter.string(from:
                        a)?.components(separatedBy: " "),
                        let bWords = formatter.string(from: b)?.components(separatedBy: " ")
                            else {
                            return false
                    }
                    var containsMatch = false
                    // 5
                    for aWord in aWords {
                        for bWord in bWords {
                            if aWord == bWord {
                                containsMatch = true
                                break
                            } }
                    }
                    return containsMatch
                }
                // 4
                .subscribe(onNext: {
                    print($0)
                })
                .disposed(by: disposeBag)
        }
        */
        /*
        let contacts = [
            "603-555-1212": "Florent",
            "212-555-1212": "Junior",
            "408-555-1212": "Marin",
            "617-555-1212": "Scott"
        ]
        
        
        func phoneNumber(from inputs: [Int]) -> String {
            var phone = inputs.map(String.init).joined()
            phone.insert("-", at: phone.index(
                phone.startIndex,
                offsetBy: 3)
            )
            phone.insert("-", at: phone.index(
                phone.startIndex,
                offsetBy: 7)
            )
            return phone
        }
        
        
        example("contacts") {
            let input = PublishSubject<Int>()
            input.onNext(0)
            input.onNext(603)
            input.onNext(2)
            input.onNext(1)
            // Confirm that 7 results in "Contact not found," and then change to 2
            //and confirm that Junior is found
            input.onNext(7)
            "6035551212".characters.forEach {
                if let number = (Int("\($0)")) {
                    input.onNext(number)
                }
            }
            input.onNext(9)
            if let contact = contacts["603-555-1212"] {
                print("Dialing \(contact) (\("603-555-1212"))...")
            } else {
                print("Contact not found")
            }
            
            
            
        }
        */
        /*
        var start = 0
        func getStartNumber() -> Int {
                start += 1
                return start
        }
        example("example") {
            
            
            let numbers = Observable<Int>.create { observer in
                let start = getStartNumber()
                observer.onNext(start)
                observer.onNext(start+1)
                observer.onNext(start+2)
                
                observer.onCompleted()
                return Disposables.create()
            }
            numbers
                .subscribe(onNext: { el in
                    print("element [\(el)]")
                }, onCompleted: {
                    print("-------------")
                })
            
            numbers
                .subscribe(onNext: { el in
                    print("element [\(el)]")
                }, onCompleted: {
                    print("-------------")
                })

            
        }
        
        */
        /*
        example( "toArray") {
            let disposeBag = DisposeBag()
            // 1
            Observable.of("A", "B", "C")
                // 2
                .toArray()
                .subscribe(onNext: {
                    print($0) })
                .disposed(by: disposeBag)
        }
        */
        /*
        example( "map") {
            let disposeBag = DisposeBag()
            // 1
            let formatter = NumberFormatter()
            formatter.numberStyle = .spellOut
            // 2
            Observable<NSNumber>.of(123, 4, 56)
                // 3
                .map {
                    
                    ($0 as! Int) * 2
                    //formatter.string(from: $0) ?? ""
                }
                .subscribe(onNext: {
                    print($0, "\n")
                })
                .disposed(by: disposeBag)
        }
        
        */
        /*
        example("mapWithIndex") {
            let disposeBag = DisposeBag()
            // 1
            Observable.of(1, 2, 3, 4, 5, 6)
                // 2
                .mapWithIndex { integer, index in
                    index > 2 ? integer * 2 : integer
                }
                .subscribe(onNext: {
                    print($0)
                })
                .disposed(by: disposeBag)
        }
        
        */
        /*
        struct Student {
            var score: Variable<Int>
        }
        
        
        example( "flatMap") {
            let disposeBag = DisposeBag()
            // 1
            let ryan = Student(score: Variable(80))
            let charlotte = Student(score: Variable(90))
            let fred = Student(score: Variable(110))
            // 2
            let student = PublishSubject<Student>()
            // 3
            student.asObservable()
                .flatMap {
                    $0.score.asObservable()
                }
                // 4
                .subscribe(onNext: {
                    print($0)
                })
                .disposed(by: disposeBag)
            
            student.onNext(ryan)
            ryan.score.value = 85
            student.onNext(charlotte)
            charlotte.score.value = 100
            student.onNext(fred)
            
        }
        */
        
        /*
        let repo = "ReactiveX/RxSwift"
        example("request") {
         
            
            // response
            let response = Observable.from([repo])
                .map { urlString -> URL in
                    print(urlString)
                    return URL(string: "https://api.github.com/repos/\(urlString)/events")!
            }
                .map { url -> URLRequest in
                    return URLRequest(url: url)
                }
                .flatMap { request -> Observable<(HTTPURLResponse, Data)> in
                    return URLSession.shared.rx.response(request: request)
                }
                .shareReplay(1)
            
            // discard error
            response
                .filter {
                    response, _ in
                    return 200..<300 ~= response.statusCode
            }
                .map { _, data -> [[String: Any]] in
                    guard let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []),
                        let result = jsonObject as? [[String: Any]] else {
                            return []
                    }
                    return  result
                    
            }
                .filter {
                    objects in
                    return objects.count > 0
            }
            
            
            
            print(response)
        }
        
        */
        /*
        example("map") {
            
            var numberArray = [1,2,3,4,5]
            var newArray1 = numberArray.map({ (value: Int) -> Int in
                    return value * 2
            })
            
            // map 2
            var newArray2 = numberArray.map({ (value: Int) in
                return value * 2
            })
            // map 3
            var newArray3 = numberArray.map({
                value in value * 2
            })
            // map 4
            var newArray4 = numberArray.map({
                $0 * 2
            })
            
            let secondNumberArray = [1,2,3,4,5,6,7,8,9,10,11,12]
            let eventArray = secondNumberArray.filter{
                $0 % 2 == 0
            }
            var oneTwoFive = [1,2,3,4,5]
            // Reduce
            var sum = oneTwoFive.reduce(0, {$0 + $1})
            

            // FlatMap
            let arrayInArray = [[11,12,13],[14,15,16]]
            let flattenedArray = arrayInArray.flatMap{
                $0
            }
            // FlapMap removes nil from a collection
            let people: [String?] = ["Joice",nil,"Rob",nil,"Marie"]
            let validPeople = people.flatMap{$0}
            // Chaining - flatMap+filter+map+reduce
            
            var newValue = arrayInArray.flatMap{$0}.filter{$0 % 2 == 0}.map{$0 * $0}.reduce(0, {x,y in x + y} )
            
 
            let arrayOfInts = [0,1,2,3,4,5]
            let subArray = arrayOfInts[0...3]
            
            print(subArray)
            
        }
        */
        example("RX") {
         
            
        /*
        let helloSeguence = Observable.just("Hello Rx")
        let fibonacciSequeuce = Observable.from([0,1,2,3,4,5,8])
        let dictSeguence = Observable.from([1: "Hello", 2: "World"])
            let subscription = helloSeguence.subscribe({ event in
                print(event)
            })
        */
        
        }
        
        
        
    }
    

}

