#Build the GUI
[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window"
	Title="Test Programm"
	WindowStartupLocation = "CenterScreen"
    Width = "800"
	Height = "600"
	ShowInTaskbar = "True"
	Background="gray">
	<Grid Name="myGrid" Background="LightSteelBlue" ShowGridLines="true">
		<Grid.ColumnDefinitions>
			<ColumnDefinition Width="150"/>
			<ColumnDefinition />
		</Grid.ColumnDefinitions>
		<Grid.RowDefinitions>
			<RowDefinition Height="20"/>
			<RowDefinition />
		</Grid.RowDefinitions>
		
		<!-- Grid elements -->
		<Button Grid.Column="0" Grid.Row="1">My button</Button>
		<DockPanel>
			
		</DockPanel>
		
	</Grid>
</Window>
"@




Add-Type -AssemblyName PresentationFramework

$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$Window = [Windows.Markup.XamlReader]::Load($reader)
$Window.ShowDialog()
