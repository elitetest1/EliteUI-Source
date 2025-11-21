.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;,
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    }
.end annotation


# static fields
.field private static final blacklist POOL_EVENT_SIZE:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler-IA;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method


# virtual methods
.method public blacklist addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2

    instance-of v0, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    iget-object v0, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    :cond_0
    return-void
.end method

.method public blacklist createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 8

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    new-instance v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler-IA;)V

    return-object v1

    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual {p0}, Lcom/android/internal/midi/MidiEventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object p0

    check-cast p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler-IA;)V

    :cond_1
    iget-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 p2, 0x0

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    return-object p0
.end method

.method public blacklist getReceiver()Landroid/media/midi/MidiReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-object p0
.end method
