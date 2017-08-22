.class Lvpadn/cs$22;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;-><init>(Lcom/vpadn/widget/VpadnActivity;Lvpadn/ct;Lvpadn/cr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lvpadn/cs$22;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$22;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->E(Lvpadn/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    const-string v1, "VideoManager"

    const-string v2, "showOrHideTopBottomPlayPauseAndScheduleHideTimer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
