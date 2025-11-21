.class public Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean$Field;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final blacklist COUNTER:Ljava/lang/String; = "counter"

.field public static final blacklist FIRST_TIMESTAMP:Ljava/lang/String; = "firstTimestamp"

.field public static final blacklist LAST_TIMESTAMP:Ljava/lang/String; = "lastTimestamp"

.field public static final blacklist REASON:Ljava/lang/String; = "reason"

.field public static final blacklist REMOVED_EVENTS:Ljava/lang/String; = "removedEvents"

.field public static final blacklist REMOVED_SIZE:Ljava/lang/String; = "removedSize"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
