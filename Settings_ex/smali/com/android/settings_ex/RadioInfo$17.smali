.class Lcom/android/settings_ex/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$1800(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    #getter for: Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$1800(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$4000(Lcom/android/settings_ex/RadioInfo;)V

    .line 1048
    return-void

    .line 1046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method