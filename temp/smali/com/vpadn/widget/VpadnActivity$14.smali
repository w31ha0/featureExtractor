.class Lcom/vpadn/widget/VpadnActivity$14;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 2059
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$14;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2062
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$14;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->p(Lcom/vpadn/widget/VpadnActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :goto_0
    return-void

    .line 2063
    :catch_0
    move-exception v0

    goto :goto_0
.end method
