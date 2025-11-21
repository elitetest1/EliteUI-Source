.class Lcom/samsung/android/media/fmradio/SemFmEventListener$2;
.super Landroid/os/Handler;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/SemFmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRecordingFinished()V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 p0, 0x3

    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 p0, 0x4

    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 p0, 0x5

    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioTextPlusReceived(IIIIII)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onVolumeLocked()V

    return-void

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyReceived(J)V

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyStarted()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemDisabled()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemEnabled()V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetDisconnected()V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetConnected()V

    return-void

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    return-void

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDisabled(I)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioEnabled()V

    return-void

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStopped([J)V

    return-void

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanFinished([J)V

    return-void

    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStarted()V

    return-void

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onChannelFound(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
