.class public Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomLogoutListener;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Lcom/biznessapps/facebook/SessionEvents$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomLogoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomLogoutListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onLogoutFinish()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method
