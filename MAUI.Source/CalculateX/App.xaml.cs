using Microsoft.Maui.Controls.PlatformConfiguration.AndroidSpecific;

namespace CalculateX;

public partial class App : Microsoft.Maui.Controls.Application
{
	public App()
	{
#if ANDROID
		// Ensure that EVERY page will resize when the keyboard pops up.
		Current?.On<Microsoft.Maui.Controls.PlatformConfiguration.Android>()
			.UseWindowSoftInputModeAdjust(WindowSoftInputModeAdjust.Resize);
#endif
		InitializeComponent();
	}

	protected override Window CreateWindow(IActivationState? activationState)
	{
		return new Window(new AppShell());
	}
}
