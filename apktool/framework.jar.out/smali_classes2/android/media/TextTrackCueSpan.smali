.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field greylist-max-o mEnabled:Z

.field greylist-max-o mText:Ljava/lang/String;

.field greylist-max-o mTimestampMs:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/media/TextTrackCueSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/media/TextTrackCueSpan;

    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, p1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
