.class public Lcom/netflix/mediaclient/javabridge/ui/android/registration/DeactivateCompleteCommand;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;
.source "DeactivateCompleteCommand.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "deactivate"

.field public static final OBJECT:Ljava/lang/String; = "nrdp.registration"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "deactivate"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "nrdp.registration"

    return-object v0
.end method
