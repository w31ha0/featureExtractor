.class final enum Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 119
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 120
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method public static values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method
