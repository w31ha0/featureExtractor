.class public final enum Lcom/mobfox/sdk/video/VASTTasks$Tasks;
.super Ljava/lang/Enum;
.source "VASTTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/video/VASTTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobfox/sdk/video/VASTTasks$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobfox/sdk/video/VASTTasks$Tasks;

.field public static final enum GET_DRAWABLES:Lcom/mobfox/sdk/video/VASTTasks$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    const-string v1, "GET_DRAWABLES"

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/video/VASTTasks$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->GET_DRAWABLES:Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    sget-object v1, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->GET_DRAWABLES:Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->$VALUES:[Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->$VALUES:[Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    invoke-virtual {v0}, [Lcom/mobfox/sdk/video/VASTTasks$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    return-object v0
.end method
