.class Lcom/android/settings_ex/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$1;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$1;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #calls: Lcom/android/settings_ex/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$000(Lcom/android/settings_ex/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 162
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$1;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #calls: Lcom/android/settings_ex/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$100(Lcom/android/settings_ex/SettingsLicenseActivity;)V

    goto :goto_0
.end method
