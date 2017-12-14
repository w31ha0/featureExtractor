.class public Lcom/tutusw/phonespeedup/WidgetConfigActivity;
.super Landroid/app/Activity;
.source "WidgetConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;
    }
.end annotation


# instance fields
.field apply:Landroid/widget/Button;

.field back:[I

.field backChooser:Landroid/widget/Spinner;

.field backName:[Ljava/lang/String;

.field checkTempSensor:Landroid/widget/CheckBox;

.field color:[I

.field colorChooser:Landroid/widget/Spinner;

.field colorName:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field mAppWidgetId:I

.field refreshChooser:Landroid/widget/Spinner;

.field refreshInterval:[I

.field refreshIntervalString:[Ljava/lang/String;

.field temp:[Ljava/lang/String;

.field tempChooser:Landroid/widget/Spinner;

.field tempInt:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9ed8\u8ba4"

    aput-object v1, v0, v6

    const-string v1, "\u7eff\u8272"

    aput-object v1, v0, v4

    const-string v1, "\u9752\u8272"

    aput-object v1, v0, v3

    const-string v1, "\u7ea2\u8272"

    aput-object v1, v0, v5

    const-string v1, "\u84dd\u8272"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9ec4\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6a59\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7c89\u7ea2\u8272"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u767d\u8272"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7070\u8272"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->colorName:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9ed8\u8ba4"

    aput-object v1, v0, v6

    const-string v1, "\u9ed1\u6697"

    aput-object v1, v0, v4

    const-string v1, "\u660e\u4eae"

    aput-object v1, v0, v3

    const-string v1, "\u900f\u660e"

    aput-object v1, v0, v5

    const-string v1, "\u7ea2\u8272"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u7eff\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u84dd\u8272"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->backName:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, -0x1

    aput v1, v0, v6

    aput v4, v0, v3

    aput v3, v0, v5

    aput v5, v0, v7

    const/4 v1, 0x5

    aput v7, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    aput v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->back:[I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->color:[I

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u88ab\u52a8"

    aput-object v1, v0, v6

    const-string v1, "240 \u79d2"

    aput-object v1, v0, v4

    const-string v1, "120 \u79d2"

    aput-object v1, v0, v3

    const-string v1, "60 \u79d2"

    aput-object v1, v0, v5

    const-string v1, "30 \u79d2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "15 \u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10 \u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5 \u79d2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshIntervalString:[Ljava/lang/String;

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshInterval:[I

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u6444\u6c0f\u6e29\u5ea6"

    aput-object v1, v0, v6

    const-string v1, "\u534e\u6c0f\u6e29\u5ea6"

    aput-object v1, v0, v4

    const-string v1, "\u5168\u9009"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->temp:[Ljava/lang/String;

    .line 37
    new-array v0, v5, [I

    aput v4, v0, v4

    aput v3, v0, v3

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempInt:[I

    .line 20
    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        -0x1
        -0xff0100
        -0xff0001
        -0x10000
        -0xffff01
        -0x100
        -0x8100
        -0x3f35
        -0x10102
        -0x272728
    .end array-data

    .line 33
    :array_1
    .array-data 4
        -0x1
        0x3a980
        0x1d4c0
        0xea60
        0x7530
        0x3a98
        0x2710
        0x1388
    .end array-data
.end method


# virtual methods
.method public apply()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const-string v8, "widgetBack"

    .line 144
    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 147
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const-string v5, "Speedup"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 148
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "widgetFreqColor"

    iget-object v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->color:[I

    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->colorChooser:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget v6, v6, v7

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v5, "widgetBack"

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->back:[I

    iget-object v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->backChooser:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    aget v5, v5, v6

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v5, "widgetRefreshInterval"

    iget-object v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshInterval:[I

    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshChooser:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget v6, v6, v7

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v5, "widgetTemp"

    iget-object v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempInt:[I

    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempChooser:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget v6, v6, v7

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v5, "widgetTempSensor"

    iget-object v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->checkTempSensor:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    new-instance v4, Landroid/widget/RemoteViews;

    .line 158
    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetBack"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/tutusw/phonespeedup/Themes;->getWidgetBackById(I)I

    move-result v6

    .line 157
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/tutusw/phonespeedup/WidgetService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    iget v5, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->mAppWidgetId:I

    invoke-virtual {v0, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->mAppWidgetId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v9, v2}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->finish()V

    .line 185
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const v12, 0x1090009

    const v11, 0x1090008

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->requestWindowFeature(I)Z

    .line 45
    const v7, 0x7f030016

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 50
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 51
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 53
    const-string v7, "appWidgetId"

    .line 52
    invoke-virtual {v3, v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->mAppWidgetId:I

    .line 56
    new-instance v1, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/WidgetConfigActivity;Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;)V

    .line 57
    .local v1, "clicker":Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;
    const v7, 0x7f0800a6

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->apply:Landroid/widget/Button;

    .line 58
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->apply:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v7, 0x7f08009f

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->colorChooser:Landroid/widget/Spinner;

    .line 60
    const v7, 0x7f0800a1

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->backChooser:Landroid/widget/Spinner;

    .line 61
    const v7, 0x7f0800a3

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshChooser:Landroid/widget/Spinner;

    .line 62
    const v7, 0x7f0800a5

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempChooser:Landroid/widget/Spinner;

    .line 63
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->checkTempSensor:Landroid/widget/CheckBox;

    .line 66
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/tutusw/phonespeedup/WidgetService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 69
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 71
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->colorName:[Ljava/lang/String;

    .line 69
    invoke-direct {v2, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 72
    .local v2, "colorChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v2, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 73
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->colorChooser:Landroid/widget/Spinner;

    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 77
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->backName:[Ljava/lang/String;

    .line 75
    invoke-direct {v0, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    .local v0, "backChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->backChooser:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 81
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 83
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshIntervalString:[Ljava/lang/String;

    .line 81
    invoke-direct {v5, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 84
    .local v5, "refreshChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v5, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->refreshChooser:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    new-instance v6, Landroid/widget/ArrayAdapter;

    .line 89
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->temp:[Ljava/lang/String;

    .line 87
    invoke-direct {v6, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    .local v6, "tempChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v6, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempChooser:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempChooser:Landroid/widget/Spinner;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 96
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->tempSensorExists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->checkTempSensor:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 98
    iget-object v7, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->checkTempSensor:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    .end local v0    # "backChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .end local v1    # "clicker":Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;
    .end local v2    # "colorChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .end local v5    # "refreshChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .end local v6    # "tempChooserArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    :cond_0
    return-void
.end method

.method public readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "in":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 115
    .local v3, "line":Ljava/lang/String;
    const-string v4, ""

    .line 117
    .local v4, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_0

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :goto_1
    return-object v5

    .line 119
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 122
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v7

    .line 123
    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    move-object v5, v7

    .line 129
    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 127
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 131
    throw v5

    .line 128
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v5, v7

    .line 129
    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v5, v7

    .line 129
    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 122
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public tempSensorExists()Z
    .locals 2

    .prologue
    .line 136
    const-string v1, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "omapTemp":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
