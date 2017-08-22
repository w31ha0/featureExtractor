.class Lcom/adbert/AdbertVideoBox$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertVideoBox$1;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertVideoBox$1;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox$1;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$1$1;->a:Lcom/adbert/AdbertVideoBox$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$1$1;->a:Lcom/adbert/AdbertVideoBox$1;

    iget-object v0, v0, Lcom/adbert/AdbertVideoBox$1;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0, p1, p2}, Lcom/adbert/AdbertVideoBox;->a(Lcom/adbert/AdbertVideoBox;ILjava/lang/String;)V

    .line 105
    return-void
.end method
