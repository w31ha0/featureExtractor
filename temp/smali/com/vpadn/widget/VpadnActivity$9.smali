.class Lcom/vpadn/widget/VpadnActivity$9;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->doCloseExpandForSDKPlugIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$9;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$9;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->n(Lcom/vpadn/widget/VpadnActivity;)V

    .line 894
    return-void
.end method
