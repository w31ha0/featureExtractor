.class Lcom/adbert/AdbertActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertActivity;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/adbert/AdbertActivity$2;->a:Lcom/adbert/AdbertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adbert/AdbertActivity$2;->a:Lcom/adbert/AdbertActivity;

    invoke-static {v0}, Lcom/adbert/AdbertActivity;->a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 213
    return-void
.end method
