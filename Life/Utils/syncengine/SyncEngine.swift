//
// Copyright (c) 2020 Related Code 
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Firebase


class SyncEngine: NSObject {

	class func initBackend() {

		FirebaseApp.configure()
		FirebaseConfiguration().setLoggerLevel(.error)

        if (UserDefaults.standard.bool(forKey: "Initialized") == false) {
            UserDefaults.standard.set(true, forKey: "Initialized")
			AuthUser.logOut()
		}
	}

	
	class func initUpdaters() {
		_ = FireUpdaters.shared
	}

	
	class func initObservers() {
		_ = FireObservers.shared
	}
}
