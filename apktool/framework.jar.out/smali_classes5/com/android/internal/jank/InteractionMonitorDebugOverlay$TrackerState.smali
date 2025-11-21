.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackerState"
.end annotation


# instance fields
.field final blacklist mCookie:I

.field final blacklist mCuj:I

.field blacklist mState:I


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCookie:I

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;-><init>(II)V

    return-void
.end method
