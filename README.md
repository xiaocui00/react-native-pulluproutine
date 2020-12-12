
# react-native-pulluproutine

## Getting started

`$ npm install react-native-pulluproutine --save`

### Mostly automatic installation

`$ react-native link react-native-pulluproutine`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-pulluproutine` and add `RNPulluproutine.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPulluproutine.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPulluproutinePackage;` to the imports at the top of the file
  - Add `new RNPulluproutinePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-pulluproutine'
  	project(':react-native-pulluproutine').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-pulluproutine/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-pulluproutine')
  	```


## Usage
```javascript
import RNPulluproutine from 'react-native-pulluproutine';

// TODO: What to do with the module?
RNPulluproutine;
```
  