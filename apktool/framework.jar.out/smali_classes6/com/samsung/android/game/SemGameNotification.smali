.class public Lcom/samsung/android/game/SemGameNotification;
.super Ljava/lang/Object;
.source "SemGameNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/SemGameNotification$GameEvent;,
        Lcom/samsung/android/game/SemGameNotification$NotificationDataKey;
    }
.end annotation


# static fields
.field public static final whitelist GAME_FOCUSED_IN:I = 0x2

.field public static final whitelist GAME_FOCUSED_OUT:I = 0x3

.field public static final whitelist GAME_PACKAGE_ADDED:I = 0x0

.field public static final whitelist GAME_PACKAGE_REMOVED:I = 0x1

.field public static final whitelist UNDEFINED:I = -0x1

.field private static final blacklist VALID_GAME_EVENTS:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/SemGameNotification;->VALID_GAME_EVENTS:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isValidGameEvent(Ljava/lang/Integer;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/game/SemGameNotification;->VALID_GAME_EVENTS:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/SemGameNotification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/SemGameNotification$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$isValidGameEvent$0(Ljava/lang/Integer;I)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
