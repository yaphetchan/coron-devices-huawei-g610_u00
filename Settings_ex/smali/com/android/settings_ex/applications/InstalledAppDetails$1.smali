.class Lcom/android/settings_ex/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 231
    :pswitch_1
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : clear user data "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #calls: Lcom/android/settings_ex/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$000(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 236
    :pswitch_2
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : clear ucache "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$200(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$100(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_3
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : package move "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #calls: Lcom/android/settings_ex/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method