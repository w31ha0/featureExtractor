.class Lcom/adbert/AdbertVideoBox$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertVideoBox;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertVideoBox;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$6;->a:Lcom/adbert/AdbertVideoBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$6;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->m(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/a/a/b;

    move-result-object v1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/adbert/a/a/b;->i:Z

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
