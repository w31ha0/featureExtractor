.class Lcom/adbert/AdbertVideoBox$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertVideoBox;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adbert/AdbertVideoBox;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$2;->b:Lcom/adbert/AdbertVideoBox;

    iput-object p2, p0, Lcom/adbert/AdbertVideoBox$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$2;->b:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->g(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/AdbertVideoBoxListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$2;->b:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->g(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/AdbertVideoBoxListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adbert/AdbertVideoBoxListener;->onReceived(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adbert/a/i;->d(Ljava/lang/String;)V

    .line 120
    return-void
.end method
