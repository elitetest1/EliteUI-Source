.class public final Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsCbHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCodingScheme"
.end annotation


# instance fields
.field public final blacklist encoding:I

.field public final blacklist hasLanguageIndicator:Z

.field public final blacklist language:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, 0xf0

    shr-int/lit8 v0, v0, 0x4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4

    const/4 v6, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    and-int/lit8 p1, p1, 0xc

    shr-int/2addr p1, v2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_2()[Ljava/lang/String;

    move-result-object v0

    and-int/2addr p1, v1

    aget-object v4, v0, p1

    goto :goto_1

    :pswitch_2
    and-int/2addr p1, v1

    if-ne p1, v3, :cond_1

    :goto_0
    move v2, v6

    goto :goto_3

    :cond_1
    move v2, v3

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_0()[Ljava/lang/String;

    move-result-object v0

    and-int/2addr p1, v1

    aget-object v4, v0, p1

    :cond_2
    :goto_1
    :pswitch_4
    move v2, v3

    :cond_3
    :goto_2
    move v3, v5

    goto :goto_3

    :cond_4
    and-int/lit8 p1, p1, 0x4

    shr-int/2addr p1, v2

    if-ne p1, v3, :cond_2

    goto :goto_2

    :goto_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    return-void

    :cond_5
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported GSM dataCodingScheme "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
