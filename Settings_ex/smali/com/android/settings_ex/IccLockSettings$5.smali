.class Lcom/android/settings_ex/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$5;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$5;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$5;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimId:I
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$600(Lcom/android/settings_ex/IccLockSettings;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 342
    return-void
.end method
