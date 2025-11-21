.class public Lcom/samsung/android/knox/analytics/model/Event;
.super Lorg/json/JSONObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/model/Event$Fields;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BULK_VALUE:I = 0x1


# instance fields
.field private blacklist bulk:I

.field private blacklist data:Ljava/lang/String;

.field private blacklist id:I

.field private blacklist vid:I


# direct methods
.method public constructor blacklist <init>(IIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p1, "vid"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bulk"

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getBulk()I
    .locals 1

    :try_start_0
    const-string v0, "bulk"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getData()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getId()I
    .locals 1

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api getInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "bulk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/model/Event;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getVid()I
    .locals 1

    :try_start_0
    const-string/jumbo v0, "vid"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
