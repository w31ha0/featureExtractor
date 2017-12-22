.class public Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;
.source "CreateAccountCompleteCommand.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key"

.field public static final NAME:Ljava/lang/String; = "createdAccount"

.field public static final OBJECT:Ljava/lang/String; = "nrdp.registration"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "nf_reg"


# instance fields
.field private created:Z

.field private key:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "createdAccount"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->key:I

    .line 47
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "CreateAccountCompleteCommand constructor"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->localPopulate(Lorg/json/JSONObject;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->key:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "nrdp.registration"

    return-object v0
.end method

.method public isCreatedSuccess()Z
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "nf_reg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " created:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    return v0
.end method

.method protected localPopulate(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 56
    const-string/jumbo v0, "result"

    const-string/jumbo v1, "ERROR"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    .line 58
    iget-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "key"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->key:I

    .line 61
    :cond_0
    const-string/jumbo v1, "nf_reg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "populated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " created:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->created:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->key:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
