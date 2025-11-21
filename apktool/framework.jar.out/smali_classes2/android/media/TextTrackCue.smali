.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final greylist-max-o ALIGNMENT_END:I = 0xca

.field static final greylist-max-o ALIGNMENT_LEFT:I = 0xcb

.field static final greylist-max-o ALIGNMENT_MIDDLE:I = 0xc8

.field static final greylist-max-o ALIGNMENT_RIGHT:I = 0xcc

.field static final greylist-max-o ALIGNMENT_START:I = 0xc9

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TTCue"

.field static final greylist-max-o WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final greylist-max-o WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final greylist-max-o WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field greylist-max-o mAlignment:I

.field greylist-max-o mAutoLinePosition:Z

.field greylist-max-o mId:Ljava/lang/String;

.field greylist-max-o mLinePosition:Ljava/lang/Integer;

.field greylist-max-o mLines:[[Landroid/media/TextTrackCueSpan;

.field greylist-max-o mPauseOnExit:Z

.field greylist-max-o mRegion:Landroid/media/TextTrackRegion;

.field greylist-max-o mRegionId:Ljava/lang/String;

.field greylist-max-o mSize:I

.field greylist-max-o mSnapToLines:Z

.field greylist-max-o mStrings:[Ljava/lang/String;

.field greylist-max-o mTextPosition:I

.field greylist-max-o mWritingDirection:I


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    const/16 v1, 0x64

    iput v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    const/16 v2, 0x32

    iput v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iput v1, p0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v1, 0xc8

    iput v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iput-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    return-void
.end method


# virtual methods
.method public greylist-max-o appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 15

    move-object/from16 v1, p1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    :cond_0
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v2, :cond_6

    aget-object v8, v0, v6

    if-nez v7, :cond_1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v8, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v8

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_1
    if-ge v12, v9, :cond_5

    aget-object v14, v8, v12

    if-nez v13, :cond_3

    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-wide v4, v14, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v4, v5}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-wide v10, v4

    :cond_4
    iget-object v4, v14, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public greylist-max-o appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const-string v1, "null"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p0, v4

    if-nez v3, :cond_1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/media/TextTrackCue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    check-cast p1, Landroid/media/TextTrackCue;

    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v3, p1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v2, v3, :cond_4

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_3
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v3, p1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v3, p1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v3, p1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v2, v2

    iget-object v3, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-ne v2, v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v2

    :catch_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist-max-o onTime(J)V
    .locals 9

    iget-object p0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-wide v7, v6, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    move v7, v1

    :goto_2
    iput-boolean v7, v6, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", pauseOnExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v2, 0x64

    const-string v3, "INVALID"

    if-ne v1, v2, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    const-string v1, "vertical_lr"

    goto :goto_0

    :cond_1
    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    const-string v1, "vertical_rl"

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionId:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", snapToLines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_3

    const-string v1, "auto"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_4

    const-string v3, "end"

    goto :goto_2

    :cond_4
    const/16 v2, 0xcb

    if-ne v1, v2, :cond_5

    const-string v3, "left"

    goto :goto_2

    :cond_5
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    const-string v3, "middle"

    goto :goto_2

    :cond_6
    const/16 v2, 0xcc

    if-ne v1, v2, :cond_7

    const-string v3, "right"

    goto :goto_2

    :cond_7
    const/16 v2, 0xc9

    if-ne v1, v2, :cond_8

    const-string v3, "start"

    :cond_8
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
