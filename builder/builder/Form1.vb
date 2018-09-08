Public Class Form1

    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButton1.Click

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If My.Computer.FileSystem.FileExists("usbcreate.exe") Then
            System.Diagnostics.Process.Start("usbcreate.exe")
        Else
            Button1.Enabled = False
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        Application.Exit()
    End Sub

    Private Sub ClearCacheToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ClearCacheToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("bcleanup.exe") Then
            System.Diagnostics.Process.Start("bcleanup.exe")
        Else
            ClearCacheToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub TestHaloPEMToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TestHaloPEMToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("files\halo.exe") Then
            System.Diagnostics.Process.Start("files\menu.exe")
        Else
            TestHaloPEMToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub TestHaloDedicatedServerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TestHaloDedicatedServerToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("files\haloded.exe") Then
            System.Diagnostics.Process.Start("files\haloded.exe")
        Else
            TestHaloDedicatedServerToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub UseUnofficialPatchToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UseUnofficialPatchToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("files\halo.exe") Then
            System.Diagnostics.Process.Start("unoffpatch.exe")
        Else
            UseUnofficialPatchToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub BuildHaloPEMToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BuildHaloPEMToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("usbcreate.exe") Then
            System.Diagnostics.Process.Start("usbcreate.exe")
        Else
            BuildHaloPEMToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub WriteHaloPEMToUSBToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles WriteHaloPEMToUSBToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("writeiso.exe") Then
            System.Diagnostics.Process.Start("writeiso.exe")
        Else
            WriteHaloPEMToUSBToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub ClearHaloPEMCacheToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ClearHaloPEMCacheToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("bcleanup.exe") Then
            System.Diagnostics.Process.Start("bcleanup.exe")
        Else
            ClearHaloPEMCacheToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub AboutHaloPortableEditionToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AboutHaloPortableEditionToolStripMenuItem.Click
        MsgBox("Copyright (C) SparrOSDeveloperTeam 2015-2018. Halo Portable Edition Maker is an MIT source tool that allows you to create a Halo flash drive with a playable version of Halo on it. For more information, please visit the repository. It can be found at https://github.com/SparrOSDeveloperTeam/halo", 0 + 64, "About Halo Portable Edition Maker")
    End Sub

    Private Sub ReadmeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ReadmeToolStripMenuItem.Click
        If My.Computer.FileSystem.FileExists("readme.txt") Then
            System.Diagnostics.Process.Start("readme.txt")
        Else
            ReadmeToolStripMenuItem.Enabled = False
        End If
    End Sub

    Private Sub AboutSparrOSDeveloperTeamToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AboutSparrOSDeveloperTeamToolStripMenuItem.Click
        MsgBox("Homepage: https://sparrosdeveloperteam.github.io/SparrOS Github: https://github.com/SparrOSDeveloperTeam", 0 + 64, "About SparrOSDeveloperTeam")
    End Sub

    Private Sub VisitWebsiteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles VisitWebsiteToolStripMenuItem.Click
        System.Diagnostics.Process.Start("https://github.com/SparrOSDeveloperTeam/halo")
    End Sub
End Class
