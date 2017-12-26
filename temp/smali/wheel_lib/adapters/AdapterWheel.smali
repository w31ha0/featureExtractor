.class public Lwheel_lib/adapters/AdapterWheel;
.super Lwheel_lib/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lwheel_lib/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwheel_lib/WheelAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lwheel_lib/WheelAdapter;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lwheel_lib/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lwheel_lib/adapters/AdapterWheel;->adapter:Lwheel_lib/WheelAdapter;

    .line 25
    return-void
.end method


# virtual methods
.method public getAdapter()Lwheel_lib/WheelAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lwheel_lib/adapters/AdapterWheel;->adapter:Lwheel_lib/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lwheel_lib/adapters/AdapterWheel;->adapter:Lwheel_lib/WheelAdapter;

    invoke-interface {v0, p1}, Lwheel_lib/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lwheel_lib/adapters/AdapterWheel;->adapter:Lwheel_lib/WheelAdapter;

    invoke-interface {v0}, Lwheel_lib/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
