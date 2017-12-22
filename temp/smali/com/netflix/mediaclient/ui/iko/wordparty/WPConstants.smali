.class public Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;
.super Ljava/lang/Object;
.source "WPConstants.java"


# static fields
.field public static final ANIMATION_DURATION_MS:J = 0x3e8L

.field public static final ANTIALIAS_BORDER_SIZE_PX:I = 0x1

.field public static final ASPECT_RATIO_4_3_QUALIFIER_VALUE:F = 1.5f

.field public static final CARDS_MAX_COUNT:I = 0x4

.field public static final CARD_ANIMATION_ROTATION_START_DEGREE:I = 0x5a

.field public static final CARD_FLIP_ALPHA_VALUE_LIST:[F

.field public static final CARD_FLIP_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final CARD_HEIGHT_SPACING_MULTIPLIER:F = 3.0f

.field public static final CARD_HIDE_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final CARD_LEARN_MOMENT_SCALE_VALUE:F = 1.1f

.field public static final CARD_RECAP_ANIMATION_DURATION_MS:J = 0x320L

.field public static final CARD_ROTATION_DEGREE:F = 3.0f

.field public static final CARD_SCALE_UP_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final CARD_SHADOW_PERCENTAGE:I = 0xa

.field public static final CARD_SPACING_MULTIPLIER:F = 1.2f

.field public static final CARD_WIDTH_PERCENTAGE_FOR_4_3_RATIO_DEVICE:F = 0.4f

.field public static final CARD_WIDTH_PERCENTAGE_OF_DEVICE_WIDTH:F = 0.36f

.field public static final CARD_ZOOM_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final CONTEXTUAL_MOMENT:Ljava/lang/String; = "CONTEXTUAL"

.field public static final FLIP_ROTATION_DEGREE_VALUE:I = -0xb4

.field public static final HIDE_PLAYER_CONTROLS_DELAY_MS:I = 0x12c

.field public static final IGNORE_CLICK_TIMEOUT_MS:I = 0x12c

.field public static final LEARN_MOMENT:Ljava/lang/String; = "LEARN"

.field public static final LOGGING_EXPECTED_VIDEO_OFFSET_KEY:Ljava/lang/String; = "expectedVideoOffset"

.field public static final LOGGING_NOTIFICATION_ID_KEY:Ljava/lang/String; = "notificationId"

.field public static final LOGGING_STATE_ACTIVE_EXIT:Ljava/lang/String; = "ACTIVE_EXIT"

.field public static final LOGGING_STATE_PASSIVE_EXIT:Ljava/lang/String; = "PASSIVE_EXIT"

.field public static final MINIMUM_PUG_ON_SCREEN_DISPLAY_TIME_MS:I = 0x7d0

.field public static final ONE_SECOND_DURATION_MS:I = 0x3e8

.field public static final PANEL_FLIP_ANIMATION_DELAY_MS:J = 0xa6L

.field public static final PANEL_FLIP_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final PROGRESS_DIFFERENCE_ACCEPTABLE_RANGE_MS:I = 0x1f4

.field public static final PROGRESS_PROPERTY:Ljava/lang/String; = "progress"

.field public static final PUG_MINIMUM_DURATION_MS:I = 0x1388

.field public static final PUG_PROGRESS_FOREGROUND_COLOR:I = -0x4c000001

.field public static final PUG_PROGRESS_VALUE:I = 0x1f4

.field public static final PUG_PULSATING_ANIMATION_DURATION_MS:I = 0x534

.field public static final PUG_REVEAL_SCALE_MULTIPLIER:F = 2.5f

.field public static final PUG_SCALE_PULSATE_VALUE:F = 1.1f

.field public static final RECAP_ANIMATION_DURATION_MS:J = 0x5dcL

.field public static final RECAP_BIG_SCALE_VALUE:F = 1.5f

.field public static final RECAP_INTRO_DELAY_DURATION_MS:I = 0xc8

.field public static final RECAP_SMALL_SCALE_VALUE:F = 0.5f

.field public static final RESET_VALUE:F = 0.0f

.field public static final REVEAL_ANIMATION_DELAY_DURATION_MS:I = 0x14d

.field public static final REVEAL_ANIMATION_DURATION_MS:I = 0x29a

.field public static final REVEAL_BIG_SCALE_VALUE:F = 1.5f

.field public static final REVEAL_MOMENT:Ljava/lang/String; = "REVEAL"

.field public static final SCALE_RESET_VALUE:F = 1.0f

.field public static final SFX_VOLUME_VALUE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "WPConstants"

.field public static final TIMEOUT_DURATION_MS:I = 0x3a98

.field public static final VIDEO_CARD_FADE_ANIMATION_DURATION_MS:J = 0x1f4L

.field public static final VIDEO_CARD_FADE_IN_ALPHA_END_VALUE:F = 1.0f

.field public static final VIDEO_CARD_FADE_IN_ALPHA_START_VALUE:F = 0.5f

.field public static final VIDEO_CARD_FADE_OUT_ALPHA_END_VALUE:F = 0.0f

.field public static final VIDEO_CARD_FADE_OUT_ALPHA_START_VALUE:F = 1.0f

.field public static final WIGGLE_ANIMATION_DELAY_MS:I = 0x64

.field public static final WIGGLE_ANIMATION_DURATION_MS:I = 0x1f4

.field public static final WORD_WALLY_CARD_HEIGHT_RATIO:F = 0.62f

.field public static final WORD_WALLY_PANEL_HEIGHT_RATIO:F = 0.56f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->CARD_FLIP_ALPHA_VALUE_LIST:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuintOutInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    invoke-static {v0, v1, v2, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
