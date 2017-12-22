.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/Exit;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Exit.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "exit"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "exit"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
