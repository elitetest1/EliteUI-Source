.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final blacklist LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getResource(I)I
    .locals 3

    const v0, 0x104066b

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using generic message for unknown error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Http"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const p0, 0x1040673

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const p0, 0x1040672

    return p0

    :pswitch_3
    const p0, 0x1040678

    return p0

    :pswitch_4
    const p0, 0x104066c

    return p0

    :pswitch_5
    const p0, 0x1040674

    return p0

    :pswitch_6
    const p0, 0x104066d

    return p0

    :pswitch_7
    const p0, 0x1040671

    return p0

    :pswitch_8
    const p0, 0x1040676

    return p0

    :pswitch_9
    const p0, 0x1040675

    return p0

    :pswitch_a
    const p0, 0x1040008

    return p0

    :pswitch_b
    const p0, 0x104066e

    return p0

    :pswitch_c
    const p0, 0x1040007

    return p0

    :pswitch_d
    const p0, 0x104066f

    return p0

    :pswitch_e
    const p0, 0x1040670

    return p0

    :pswitch_f
    const p0, 0x1040677

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0xf
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

.method static blacklist getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
