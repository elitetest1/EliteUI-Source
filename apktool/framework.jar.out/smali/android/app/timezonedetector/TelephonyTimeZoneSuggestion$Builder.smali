.class public final Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMatchType:I

.field private blacklist mQuality:I

.field private final blacklist mSlotIndex:I

.field private blacklist mZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatchType(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuality(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIndex(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoneId(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 2

    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->validate()V

    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion-IA;)V

    return-object v0
.end method

.method public blacklist setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .locals 0

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    return-object p0
.end method

.method public blacklist setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .locals 0

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    return-object p0
.end method

.method public blacklist setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    return-object p0
.end method

.method blacklist validate()V
    .locals 7

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    iget-object p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    const-string v2, ", matchType="

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid quality or match type for null zone ID. quality="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v6, p0

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v5

    :goto_1
    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    :cond_4
    move p0, v5

    :cond_5
    if-eqz v6, :cond_6

    if-eqz p0, :cond_6

    :goto_2
    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid quality or match type with zone ID. quality="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
