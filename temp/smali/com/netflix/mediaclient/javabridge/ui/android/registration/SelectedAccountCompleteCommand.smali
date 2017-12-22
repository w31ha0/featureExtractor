.class public Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;
.source "SelectedAccountCompleteCommand.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "selectedAccount"

.field public static final OBJECT:Ljava/lang/String; = "nrdp.registration"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "nf_reg"


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "selectedAccount"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->selected:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->localPopulate(Lorg/json/JSONObject;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "nrdp.registration"

    return-object v0
.end method

.method public isSelectedSuccess()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->selected:Z

    return v0
.end method

.method protected localPopulate(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v0, "result"

    const-string/jumbo v1, "ERROR"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->selected:Z

    .line 53
    const-string/jumbo v0, "nf_reg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populated: selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->selected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
