.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public blacklist TAG:Ljava/lang/String;

.field private blacklist mBuffer:[B

.field private blacklist mCount:I

.field private blacklist mInSysEx:Z

.field private blacklist mNeeded:I

.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;

.field private blacklist mRunningStatus:B


# direct methods
.method public constructor blacklist <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method public static blacklist formatMidiData([BII)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MIDI+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, p1, v1

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "0x%02X, "

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist onSend([BIIJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    move/from16 v6, p2

    move v9, v1

    move v13, v3

    move/from16 v1, p3

    :goto_1
    if-ge v13, v1, :cond_a

    aget-byte v4, p1, v6

    and-int/lit16 v5, v4, 0xff

    const/16 v7, 0x80

    const/4 v8, 0x1

    if-lt v5, v7, :cond_6

    const/16 v7, 0xf0

    if-ge v5, v7, :cond_1

    iput-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_2

    :cond_1
    const/16 v10, 0xf8

    if-ge v5, v10, :cond_4

    if-ne v5, v7, :cond_2

    iput-boolean v8, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v9, v6

    goto/16 :goto_2

    :cond_2
    const/16 v7, 0xf7

    if-ne v5, v7, :cond_3

    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v4, :cond_9

    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v4, v6, v9

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v9, v2

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v4, v5, v3

    iput-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_2

    :cond_4
    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v4, :cond_5

    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v10, v6, v9

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    add-int/lit8 v9, v6, 0x1

    :cond_5
    move v10, v9

    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v7, 0x1

    move-object/from16 v5, p1

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v9, v10

    goto :goto_2

    :cond_6
    iget-boolean v5, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v5, :cond_9

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-gtz v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v15, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v7, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v4, v15, v7

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v5, :cond_9

    iget-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v4, :cond_8

    aput-byte v4, v15, v3

    :cond_8
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/16 v16, 0x0

    move-wide/from16 v18, p4

    move/from16 v17, v10

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_3
    if-ltz v9, :cond_b

    if-ge v9, v6, :cond_b

    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v10, v6, v9

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_b
    return-void
.end method
