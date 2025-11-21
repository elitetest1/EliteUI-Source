.class Lcom/samsung/android/knox/analytics/model/CleanEvent$Fields;
.super Ljava/lang/Object;
.source "CleanEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/model/CleanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# static fields
.field static final blacklist COUNTER:Ljava/lang/String; = "c"

.field static final blacklist DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleanedV2"

.field static final blacklist DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field static final blacklist EID:Ljava/lang/String; = "eID"

.field static final blacklist EVENT:Ljava/lang/String; = "e"

.field static final blacklist FEATURE:Ljava/lang/String; = "f"

.field static final blacklist FT:Ljava/lang/String; = "ft"

.field static final blacklist ID:Ljava/lang/String; = "id"

.field static final blacklist LT:Ljava/lang/String; = "lt"

.field static final blacklist PAYLOAD:Ljava/lang/String; = "p"

.field static final blacklist REV:Ljava/lang/String; = "rev"

.field static final blacklist RSN:Ljava/lang/String; = "rsn"

.field static final blacklist RSZ:Ljava/lang/String; = "rsz"

.field static final blacklist SCHEMA_VERSION:Ljava/lang/String; = "sV"

.field static final blacklist SCHEMA_VERSION_VALUE:I = 0x2

.field static final blacklist VID:Ljava/lang/String; = "vid"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
