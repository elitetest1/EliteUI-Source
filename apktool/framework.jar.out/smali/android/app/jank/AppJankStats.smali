.class public final Landroid/app/jank/AppJankStats;
.super Ljava/lang/Object;
.source "AppJankStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/AppJankStats$WidgetState;,
        Landroid/app/jank/AppJankStats$WidgetCategory;
    }
.end annotation


# static fields
.field public static final whitelist WIDGET_CATEGORY_ANIMATION:Ljava/lang/String; = "animation"

.field public static final whitelist WIDGET_CATEGORY_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final whitelist WIDGET_CATEGORY_MEDIA:Ljava/lang/String; = "media"

.field public static final whitelist WIDGET_CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist WIDGET_CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist WIDGET_CATEGORY_SCROLL:Ljava/lang/String; = "scroll"

.field public static final whitelist WIDGET_CATEGORY_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final whitelist WIDGET_STATE_ANIMATING:Ljava/lang/String; = "animating"

.field public static final whitelist WIDGET_STATE_DRAGGING:Ljava/lang/String; = "dragging"

.field public static final whitelist WIDGET_STATE_FLINGING:Ljava/lang/String; = "flinging"

.field public static final whitelist WIDGET_STATE_NONE:Ljava/lang/String; = "none"

.field public static final whitelist WIDGET_STATE_PLAYBACK:Ljava/lang/String; = "playback"

.field public static final whitelist WIDGET_STATE_PREDICTIVE_BACK:Ljava/lang/String; = "predictive_back"

.field public static final whitelist WIDGET_STATE_SCROLLING:Ljava/lang/String; = "scrolling"

.field public static final whitelist WIDGET_STATE_SWIPING:Ljava/lang/String; = "swiping"

.field public static final whitelist WIDGET_STATE_TAPPING:Ljava/lang/String; = "tapping"

.field public static final whitelist WIDGET_STATE_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final whitelist WIDGET_STATE_ZOOMING:Ljava/lang/String; = "zooming"


# instance fields
.field private blacklist mJankyFrames:J

.field private blacklist mNavigationComponent:Ljava/lang/String;

.field private blacklist mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

.field private blacklist mTotalFrames:J

.field private blacklist mUid:I

.field private blacklist mWidgetCategory:Ljava/lang/String;

.field private blacklist mWidgetId:Ljava/lang/String;

.field private blacklist mWidgetState:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/jank/RelativeFrameTimeHistogram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/jank/AppJankStats;->mUid:I

    iput-object p2, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    const-string/jumbo p1, "unspecified"

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p1

    :goto_0
    iput-object p4, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p5, p1

    :goto_1
    iput-object p5, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    iput-wide p6, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    iput-wide p8, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    iput-object p10, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    return-void
.end method


# virtual methods
.method public whitelist getJankyFrameCount()J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    return-wide v0
.end method

.method public whitelist getNavigationComponent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    return-object p0
.end method

.method public whitelist getTotalFrameCount()J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .locals 0

    iget p0, p0, Landroid/app/jank/AppJankStats;->mUid:I

    return p0
.end method

.method public whitelist getWidgetCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getWidgetId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getWidgetState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    return-object p0
.end method
