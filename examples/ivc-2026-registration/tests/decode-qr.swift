import Foundation
import Vision
import AppKit
let url = URL(fileURLWithPath: CommandLine.arguments[1])
let request = VNDetectBarcodesRequest()
request.symbologies = [.qr]
request.usesCPUOnly = true
let handler = VNImageRequestHandler(url: url)
do { try handler.perform([request]); let values = (request.results ?? []).compactMap { $0.payloadStringValue }; if let value = values.first { print(value) } else { fputs("No QR detected\n", stderr); exit(1) } } catch { fputs("QR decode failed: \(error)\n", stderr); exit(1) }
