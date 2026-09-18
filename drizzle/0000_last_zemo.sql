CREATE TABLE `entries` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`habit_id` integer NOT NULL,
	`date` text NOT NULL,
	`value` real DEFAULT 0 NOT NULL,
	FOREIGN KEY (`habit_id`) REFERENCES `habits`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_entries_habit_date` ON `entries` (`habit_id`,`date`);--> statement-breakpoint
CREATE INDEX `idx_entries_date` ON `entries` (`date`);--> statement-breakpoint
CREATE TABLE `habits` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`title` text NOT NULL,
	`emoji` text DEFAULT '✓' NOT NULL,
	`target` real DEFAULT 1 NOT NULL,
	`unit` text DEFAULT 'раз' NOT NULL,
	`kind` text DEFAULT 'habit' NOT NULL,
	`scheduled_date` text,
	`sort_order` integer DEFAULT 0 NOT NULL,
	`active` integer DEFAULT true NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_habits_kind_active` ON `habits` (`kind`,`active`);