.class Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->access$000(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->access$100(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;

    #calls: Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->proceedAndFinish()V
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;->access$200(Lcom/android/settings_ex/bluetooth/RequestPermissionActivity;)V

    goto :goto_0
.end method
