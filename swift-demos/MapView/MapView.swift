/**
* Name: Nyi Htet
* Description: Map swiftUi View to display the user's current location
* Date: <07/21/2024>
*/

import SwiftUI
import MapKit
import CoreLocation
/*********************************************
* View name: MapView
* Purpose: To get access the user's current location
* Parameter: No parameter
* Return: No return value
*********************************************************************/

/*********************************************
* Instructions for getting access location request from user
* 1 - click on swift-demos
* 2 - Navigate to info
* 3 - Add new bundle
* 4 - Key: Privacy - Location Always Usage Description
* 5 - Value: Message that you want to display when requesting access
*********************************************************************/

struct MapView: View {
    @State var position:MapCameraPosition = .userLocation(fallback: .automatic)
    var body: some View {
        Map(position: $position) {
            
        }.onAppear(){
            CLLocationManager().requestWhenInUseAuthorization() //from CoreLocation package
        }
    }
}

#Preview {
    MapView()
}
