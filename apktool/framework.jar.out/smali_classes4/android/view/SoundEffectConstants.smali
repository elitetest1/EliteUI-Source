.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;
.source "SoundEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SoundEffectConstants$NavigationSoundEffect;,
        Landroid/view/SoundEffectConstants$SoundEffect;
    }
.end annotation


# static fields
.field public static final whitelist CLICK:I = 0x0

.field public static final whitelist NAVIGATION_DOWN:I = 0x4

.field public static final whitelist NAVIGATION_LEFT:I = 0x1

.field public static final whitelist NAVIGATION_REPEAT_DOWN:I = 0x8

.field public static final whitelist NAVIGATION_REPEAT_LEFT:I = 0x5

.field private static final blacklist NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

.field public static final whitelist NAVIGATION_REPEAT_RIGHT:I = 0x7

.field public static final whitelist NAVIGATION_REPEAT_UP:I = 0x6

.field public static final whitelist NAVIGATION_RIGHT:I = 0x3

.field public static final whitelist NAVIGATION_UP:I = 0x2

.field private static blacklist sLastNavigationRepeatSoundEffectId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    const/4 v0, -0x1

    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getConstantForFocusDirection(IZ)I
    .locals 0

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/16 p1, 0x11

    if-eq p0, p1, :cond_2

    const/16 p1, 0x21

    if-eq p0, p1, :cond_4

    const/16 p1, 0x42

    if-eq p0, p1, :cond_1

    const/16 p1, 0x82

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    :goto_0
    const/16 p0, 0x8

    return p0

    :cond_4
    const/4 p0, 0x6

    return p0

    :cond_5
    invoke-static {p0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p0

    return p0
.end method

.method public static whitelist getContantForFocusDirection(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_3

    const/16 v2, 0x11

    if-eq p0, v2, :cond_2

    const/16 v1, 0x21

    if-eq p0, v1, :cond_4

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_4
    return v0
.end method

.method public static blacklist isNavigationRepeat(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist nextNavigationRepeatSoundEffectId()I
    .locals 2

    sget-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    invoke-static {v0}, Landroid/media/AudioManager;->getNthNavigationRepeatSoundEffect(I)I

    move-result v0

    return v0
.end method
