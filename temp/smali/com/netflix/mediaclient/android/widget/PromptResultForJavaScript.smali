.class public Lcom/netflix/mediaclient/android/widget/PromptResultForJavaScript;
.super Ljava/lang/Object;
.source "PromptResultForJavaScript.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/PromptResult;


# instance fields
.field private result:Landroid/webkit/JsPromptResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "JS result cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PromptResultForJavaScript;->result:Landroid/webkit/JsPromptResult;

    .line 36
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptResultForJavaScript;->result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 43
    return-void
.end method

.method public confirm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptResultForJavaScript;->result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 50
    return-void
.end method
