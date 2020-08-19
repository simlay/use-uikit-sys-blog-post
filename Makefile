.PHONY: cargo-bundle install run

bundle:
	cargo bundle --example uikit --target x86_64-apple-ios

run: install
	xcrun simctl launch --console booted com.github.simlay.uikit

install: bundle
	xcrun simctl install booted target/x86_64-apple-ios/debug/examples/bundle/ios/uikit.app
