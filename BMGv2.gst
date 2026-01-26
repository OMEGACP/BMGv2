<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-aff3-e6d8-3587-11c7" name="BMGv2" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="Default Category" id="default-category"/>
    <categoryEntry name="Crew (Bane)" id="4b9d-e654-e756-e1ab" hidden="false"/>
    <categoryEntry name="Crew (Batman)" id="bb57-55b2-0ab2-6ce9" hidden="false"/>
    <categoryEntry name="Crew (Black Mask)" id="493a-36bc-1b2f-a0dc" hidden="false"/>
    <categoryEntry name="Crew (Court of Owls)" id="fb1c-d0da-ecbd-dd81" hidden="false"/>
    <categoryEntry name="Crew (Gorilla Grodd)" id="69fa-ba23-e7f2-3a6d" hidden="false"/>
    <categoryEntry name="Crew (Joker)" id="a8e5-9f8a-d8f0-02c7" hidden="false"/>
    <categoryEntry name="Crew (League of Assassins)" id="9702-99aa-fc73-85a4" hidden="false"/>
    <categoryEntry name="Crew (Mad Hatter)" id="4583-b269-50aa-8407" hidden="false"/>
    <categoryEntry name="Crew (Militia)" id="78c0-f98c-71de-0d2a" hidden="false"/>
    <categoryEntry name="Crew (Mr. Freeze)" id="7e87-ad93-a8e5-ecff" hidden="false"/>
    <categoryEntry name="Crew (Oliver Queen)" id="a3ed-6968-7ee7-76c7" hidden="false"/>
    <categoryEntry name="Crew (Organized Crime)" id="0f48-7464-f7a3-b3b5" hidden="false"/>
    <categoryEntry name="Crew (Penguin)" id="2f0f-c9e9-aee7-4a3a" hidden="false"/>
    <categoryEntry name="Crew (Poison Ivy)" id="8acb-5b5e-ca8e-fb31" hidden="false"/>
    <categoryEntry name="Crew (Riddler)" id="e7cc-9d1d-65dc-4380" hidden="false"/>
    <categoryEntry name="Crew (The Brave and the Bold)" id="e482-2d30-1001-a6a1" hidden="false"/>
    <categoryEntry name="Crew (Two Face)" id="3357-90ff-5d46-5cea" hidden="false"/>
    <categoryEntry name="Crew (Unknown)" id="b8c1-0bb0-ed53-bdfa" hidden="false"/>
    <categoryEntry name="Elite Boss (Ninja)" id="16f4-d87e-e808-378c" hidden="false"/>
    <categoryEntry name="Free Agent" id="79d4-9b8b-7f29-cba5" hidden="false"/>
    <categoryEntry name="Henchman" id="cf01-1b3c-22d7-8d1b" hidden="false"/>
    <categoryEntry name="Leader" id="955d-3f8e-a1e3-88b9" hidden="false"/>
    <categoryEntry name="Minion" id="b1ff-96ae-e65f-84e7" hidden="false"/>
    <categoryEntry name="Sidekick" id="6c53-80aa-1e01-a485" hidden="false"/>
    <categoryEntry name="Equipment (Bane: Bane)" id="0daf-c319-56ab-9164" hidden="false"/>
    <categoryEntry name="Equipment (Bane: Bird)" id="4f96-ce9e-e09b-c7ad" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Cheshire)" id="0e24-78b4-3f88-2332" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Lady Shiva)" id="a684-0ba2-18de-95c4" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Nyssa al Ghul)" id="c059-e67d-a436-c0a1" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Ra&apos;s al Ghul)" id="adec-8d6e-1788-2ae0" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Talia al Ghul)" id="3c91-e67e-b870-d7f8" hidden="false"/>
    <categoryEntry name="Rival (BB)" id="33d4-af20-d41a-829e" hidden="false"/>
    <categoryEntry name="Special Unit" id="ea61-4014-081c-4b64" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Default Force" hidden="false" id="default-force">
      <categoryLinks>
        <categoryLink name="Default Category" hidden="false" id="default-force-category-link" targetId="default-category"/>
        <categoryLink name="Leader" hidden="false" id="5c90-5eb9-1242-6f1b" targetId="955d-3f8e-a1e3-88b9">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8627-c3a2-4976-f273-max" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Free Agent" hidden="false" id="5f2a-adb2-6c7f-4f5e" targetId="79d4-9b8b-7f29-cba5">
          <constraints>
            <constraint type="max" value="0" field="selections" scope="roster" shared="true" id="5eb8-972a-9158-571b" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="5eb8-972a-9158-571b">
              <repeats>
                <repeat value="150" repeats="1" field="limit::99c9-f5c8-7271-b9c6" scope="roster" childId="any" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Henchman" hidden="false" id="6e01-147a-211b-9ef2" targetId="cf01-1b3c-22d7-8d1b"/>
        <categoryLink name="Sidekick" hidden="false" id="68b7-f7cb-8f33-5327" targetId="6c53-80aa-1e01-a485">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="34fc-84d1-c603-bf09" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="34fc-84d1-c603-bf09">
              <conditions>
                <condition type="equalTo" value="0" field="selections" scope="roster" childId="955d-3f8e-a1e3-88b9" shared="true" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry type="upgrade" import="true" name="Default Root Entry" hidden="false" id="default-entry">
      <categoryLinks>
        <categoryLink targetId="default-category" id="default-category-link" primary="true" name="Default Category" hidden="false"/>
      </categoryLinks>
    </selectionEntry>
  </selectionEntries>
  <sharedRules>
    <rule name="Acrobat" id="da11-4bbf-38e8-f4fb" hidden="false">
      <description>This model gains +1” to its basic movement distance. It does not treat a Jump as Impaired Movement. This model does not spend any MC to Jump, or to get up after being Knocked Down. It can move ‘through’ other models as though they weren’t there, but cannot end its move on another model. Models with Acrobat can use the Dodging Ranged Attacks rule.</description>
    </rule>
    <rule name="Agile" id="b0d4-b352-b031-307d" hidden="false">
      <description>When this model suffers Falling Damage, make an Agility Roll. If successful, the model takes no Damage and ignores the Knocked Down effect.</description>
    </rule>
    <rule name="Arrogant" id="e95a-0fba-3eab-c954" hidden="false">
      <description>This model may only be recruited if it has the highest Reputation value of all models in the crew.</description>
    </rule>
    <rule name="Assassin (X)" id="d5a6-22e3-afce-bb83" hidden="false">
      <alias>Assassin (1)</alias>
      <alias>Assassin (2)</alias>
      <alias>Assassin (3)</alias>
      <description>If this model removes an enemy Boss as a casualty, immediately gain an extra ‘X’ Victory Points.</description>
    </rule>
    <rule name="Bulletproof Vest" id="3671-0de1-cb89-3f33" hidden="false">
      <description>Firearms weapons require a 4+ to Damage a 
model with this Trait, instead of the usual 2+.</description>
    </rule>
    <rule name="Business Agent" id="311a-4c24-57a3-1ff0" hidden="false">
      <description>When this model is recruited, add $350 to the crew’s available Funding.</description>
    </rule>
    <rule name="Charm" id="b850-c14c-50f1-5c4c" hidden="false">
      <description>Whenever this model becomes the target of a close combat attack, the attacker must pass a Willpower roll or the attack automatically fails.</description>
    </rule>
    <rule name="Close Combat Master" id="e376-b2ae-b389-571f" hidden="false">
      <description>When fighting Unarmed, this model may reroll 
failed Hit rolls in close combat.</description>
    </rule>
    <rule name="Combat Flip (1SC)" id="f162-f173-595b-d58f" hidden="false">
      <description>1SC: This ability may be used when the model is in contact with an enemy. Move this model up to 3”. This model can use this trait once per turn.</description>
      <alias>Combat Flip</alias>
    </rule>
    <rule name="Combo (Weapon)" id="7f97-d629-3ec8-708b" hidden="false">
      <description>For every 2 AC spent using the specified weapon, this model may strike 3 times.</description>
      <alias>Combo (Unarmed)</alias>
      <alias>Combo (Poisoned Sai)</alias>
    </rule>
    <rule name="Desensitized" id="8d20-f91b-b155-9646" hidden="false">
      <description>This model does not reduce its number of Action Counters as it accumulates Damage markers. Note that, in earlier editions of the game, this rule was called Insensitive, and may be listed as such on some Character Cards.</description>
    </rule>
    <rule name="Devastating Blow" id="4c02-752b-31b8-0408" hidden="false">
      <description>Once this trait is activated, for the rest of the round this model gains a +1 Strength bonus and CRT: (1 Blood Damage) on all its Close Combat Attack Actions.</description>
    </rule>
    <rule name="Disguised Sneak Attack (1SC)" id="06ea-a294-9a3e-3b08" hidden="false">
      <description>1SC: Target a model within 2&quot;. Perform an opposed Willpower roll against the target. If successful, the target cannot take Defense rolls against this model&apos;s Attacks until the end of the round.</description>
      <alias>Disguised Sneak Attack</alias>
    </rule>
    <rule name="Duelist" id="88c5-5162-26a3-aa3d" hidden="false">
      <description>While in contact with only one enemy model, this model may reroll failed Hit rolls in close combat.</description>
    </rule>
    <rule name="Elite (Type)" id="9042-9981-8585-44c0" hidden="false">
      <description>Your crew can only include 1 Elite model of each type, unless you also include the Elite Boss: Type.</description>
      <alias>Elite (Ninja)</alias>
    </rule>
    <rule name="Elite Boss (Type)" id="2ab7-a48d-2084-3bc1" hidden="false">
      <description>If your crew includes a model with this trait, you may recruit any number of Elite models of the same type as the Elite Boss.</description>
      <alias>Elite Boss (Ninja)</alias>
    </rule>
    <rule name="Falconry" id="3d59-8389-8f25-609d" hidden="false">
      <description>Until the end of the round, this model can perform ranged attacks against enemy models with 16&quot;, ignoring cover and LoS, as long as the target models are within 6&quot; of a friendly model.</description>
    </rule>
    <rule name="Feint (1SC)" id="dff5-13a0-8c39-ebad" hidden="false">
      <description>1SC: Target a single enemy model in contact and make an Agility roll – if successful, the target cannot Block this model’s attacks until the end of the round.</description>
      <alias>Feint</alias>
    </rule>
    <rule name="Good Aim (1SC)" id="294c-c52a-d46b-0d2e" hidden="false">
      <description>1SC: This model can move and fire (or fire and move) when using a weapon with the Aim weapon special rule. In addition, the model gains +1 to hit rolls with ranged attacks until the end of the round. A model can use this trait only once per round.</description>
      <alias>Good Aim</alias>
    </rule>
    <rule name="Grand Strategist" id="85bd-c322-9875-4986" hidden="false">
      <description>A model with Grand Strategist receives 2 additional Strategy points at the beginning of the game.</description>
    </rule>
    <rule name="Hidden" id="a850-294c-9a8d-291b" hidden="false">
      <description>After Objectives have been placed (at the end of the pre-game phase D), this model may be deployed anywhere in the playing area. The model must be placed more than 4” away from any Objective and out of line of sight of any enemy model or 12” away from them. If this is not possible, this model should be deployed in the usual deployment zone.</description>
    </rule>
    <rule name="Batclaw / Grapple Gun (1MC+1SC)" id="451d-b629-13c3-25b6" hidden="false">
      <description>1MC+1SC: Once per round, during this activation, this model gains +8” to its basic movement distance, and can move in any direction (including vertically) The model can move over other models, obstacles and Difficult Ground without extra cost or penalty. However, the model cannot use this rule in two consecutive activations.</description>
      <alias>Batclaw</alias>
      <alias>Batclaw / Grapple Gun</alias>
      <alias>Grapplegun</alias>
      <alias>Hook Arrow</alias>
    </rule>
    <rule name="Juggernaut (1MC+1SC)" id="3d64-ca18-0c85-bba3" hidden="false">
      <description>1MC+1SC: When this model completes a Movement action you may push all models in volume contact 2&quot; (no roll is required). In addition, this model gains +1 to hit against models contacted in this way until the end of the round.</description>
      <alias>Juggernaut</alias>
    </rule>
    <rule name="Kill them! (1SC)" id="a3e6-ea50-118e-771b" hidden="false">
      <description>1SC: All friendly Henchmen within 4” of this model (but not the activated model itself) gain 1 free Attack Counter. This AC may take the number of assigned Action Counters above a Henchman’s normal maximum. A model can use this trait only once per round.</description>
      <alias>Kill them!</alias>
    </rule>
    <rule name="Large" id="3f15-9cb2-b4fb-3db3" hidden="false">
      <description>These models are usually around twice the size of a standard human, so they are subject to the following special rules: 
• Large models have a base size of 40mm.
• The model gains +2” to its basic movement distance.
• A Large model cannot be Pushed or Grabbed, and cannot be Knocked Down in close combat except by attacks from models that also have the Large or Huge trait.
• Large models suffer a -1 penalty to all their Ping! rolls. 
• Large models gain the Charge special attack, and can reroll Endurance rolls.</description>
    </rule>
    <rule name="Light Armor" id="7b52-6498-88f0-3311" hidden="false">
      <description>Damage rolls against this model suffer a -1 penalty.</description>
    </rule>
    <rule name="Manipulative" id="520f-5f8c-706c-ea3e" hidden="false">
      <description>When this model is in your crew, you may redeploy up to two friendly models before phase D4 of the Pre-Game Sequence. In addition, during each of this model&apos;s activations, you may nominate one enemy model to take a Willpower roll. If this roll fails, this model must be the last model in its crew to activate this round.</description>
    </rule>
    <rule name="Martial Artist" id="8126-5cf9-1ee0-ad87" hidden="false">
      <description>This model ignores the penalty for being Outnumbered in combat.</description>
    </rule>
    <rule name="Martial Expert" id="d39e-6abd-aebb-fcce" hidden="false">
      <description>This model causes a Critical on a collateral result of 4, 5, or 6, not just 6.</description>
    </rule>
    <rule name="Master Fighter" id="7d37-3e9e-20fb-a1c9" hidden="false">
      <description>This model gets a +1 bonus to its Hit rolls when making Unarmed attacks.</description>
    </rule>
    <rule name="Master Marksman" id="2089-156d-f0d5-12aa" hidden="false">
      <description>This model can reroll failed Hit rolls when making ranged attacks.</description>
    </rule>
    <rule name="Mercenary" id="928b-aec0-9346-a40c" hidden="false">
      <description>You can only recruit this model in a League of Assassins Crew if a model with Name: Bane is also included in the crew.</description>
    </rule>
    <rule name="Millionaire" id="80dd-8138-cc7c-f4be" hidden="false">
      <alias>This model&apos;s crew gains an additional $400 Funding.</alias>
    </rule>
    <rule name="Mind Control Substance" id="efc8-8e30-5264-c065" hidden="false">
      <description>When this model is selected to your crew, friendly models with the Henchman Rank cannot have thir Willpower value reduced b any means and ignore the damage accumulation rules.</description>
    </rule>
    <rule name="Mixed Combat Style (2SC)" id="48a9-e1da-b47e-44c5" hidden="false">
      <description>2SC: The model may perform a close combat attack action and a free ranged attack action in the same activation this round (no Action Counters are required for the ranged attack).</description>
      <alias>Mixed Combat Style</alias>
    </rule>
    <rule name="Order (1SC)" id="f9ef-447e-c143-7356" hidden="false">
      <description>1SC: This model may use an Order on another friendly model within line of sight. The chosen model can immediately reallocate up to 2 Action Counters on its Character Card.</description>
      <alias>Order</alias>
    </rule>
    <rule name="Outlaw Field Commander (1SC)" id="168a-4504-47fe-1b91" hidden="false">
      <description>1SC: Choose one friendly model within 4” and line of sight. That model gains 1 Action Counter. This may take the number of assigned Action Counters above a model’s normal maximum. A model can use this trait once per round.</description>
      <alias>Outlaw Field Commander</alias>
    </rule>
    <rule name="Poison Master" id="0ac2-e25d-8423-8b8c" hidden="false">
      <description>To remove Poison markers inflicted by this model, the poisoned model must roll 3 dice instead of 2 and ignore the lowest result.</description>
    </rule>
    <rule name="Precise Aim (1SC)" id="f990-95e5-8d5e-5a30" hidden="false">
      <description>1SC: If this model has not moved, it can activate this ability to gain a +2 bonus to ranged attack rolls. This model may not move after using Precise 
Aim</description>
      <alias>Precise Aim</alias>
    </rule>
    <rule name="Rapid Fire (1SC)" id="4708-3417-6fab-181d" hidden="false">
      <description>1SC: When using a ranged weapon, this model gains +1 to the weapon’s Rate of Fire. If the model moves, it still gains this bonus. A model can use this trait once per activation.</description>
      <alias>Rapid Fire</alias>
    </rule>
    <rule name="Reflexes" id="9ab3-9f49-e1c3-d3fd" hidden="false">
      <description>This model can reroll failed Agility rolls.</description>
    </rule>
    <rule name="Reinforced Gloves" id="a76c-e99c-0551-57fe" hidden="false">
      <description>This model’s Unarmed attacks inflict Damage (2 Stun Damage).</description>
    </rule>
    <rule name="Scheming (X)" id="58dd-dc9b-50d1-a6c3" hidden="false">
      <description>If this model is in the crew that Raises the Plan first, the controlling player can nominate X number of models to Raise their Plan after all opposing players have done so. If your opponent uses this rule and you also have a model with the Scheming trait, you may reduce the number of models they nominated by X.</description>
      <alias>Scheming (1)</alias>
      <alias>Scheming (2)</alias>
      <alias>Scheming (3)</alias>
      <alias>Scheming (4)</alias>
      <alias>Scheming (5)</alias>
    </rule>
    <rule name="Scout" id="0faa-3c69-e9e0-c001" hidden="false">
      <description>This model may perform a free Basic Move action before the first Take the Lead Phase of the game.</description>
    </rule>
    <rule name="Sneak Attack (1SC)" id="ca7f-0db1-fb6b-530d" hidden="false">
      <description>1SC: This trait may only be performed if, at the beginning of the attacker’s activation, the target could not see the attacker. The target model cannot Block strikes from this model during this activation.</description>
      <alias>Sneak Attack</alias>
    </rule>
    <rule name="Special Volume S" id="6564-1a29-2fe2-9231" hidden="false">
      <description>This model uses a base of 40mm, but has the same volume height and rules as a model on a 30mm base. Also, this model gains +1&quot; to its basic movement distance.</description>
    </rule>
    <rule name="Stealth" id="70e3-c0a5-8720-b6bf" hidden="false">
      <description>Enemies can only see this model if it is within 8”. However, it is still subject to other rules that aid detection, such as Light, Total Vision, Superior Sense of Smell, etc.</description>
    </rule>
    <rule name="Strategist" id="2929-7a1d-d960-e34a" hidden="false">
      <description>A model with Strategist receives 1 additional Strategy point at the beginning of the game.</description>
    </rule>
    <rule name="Tension" id="94ce-3280-94d4-3137" hidden="false">
      <description>This model obtains a +1 bonus to Attack and Defense while it has at least one Damage marker on its Character Card.</description>
    </rule>
    <rule name="The_Wizard" id="e480-4890-6c8e-8b48" hidden="false">
      <description>This model does not spend SC when using the Good Aim special rule. In addition, once per game, at the start of the Raise the Plan phase, you may move this model up to 4&quot;.</description>
    </rule>
    <rule name="Toxicologist" id="a823-9628-8f8c-e3ab" hidden="false">
      <description>Before performing an attack, this model can exchange one of the following effects during that attack: Enervating /2 or Scared
In addition, models suffering damage from the Poison effect within 8&quot; of this model suffer an additional blood damage.</description>
    </rule>
    <rule name="Trickster" id="3050-696c-b6cb-3c88" hidden="false">
      <description>At the beginning of this model’s activation, it may reallocate any or all of its Action Counters on its Character Card.</description>
    </rule>
    <rule name="True Love (Name)" id="a610-1110-40f2-8367" hidden="false">
      <description>If the model named as the True Love (in parentheses) and this model are in the same crew, and the True Love model is removed as a Casualty, this model gains +1 Willpower and +1 Attack until the end of the game.</description>
      <alias>True Love (Damian Wayne)</alias>
      <alias>True Love (Bane)</alias>
      <alias>True Love (Talia)</alias>
    </rule>
    <rule name="Undercover" id="192c-55b9-e3da-3a9d" hidden="false">
      <description>After placing Objectives, this model may be deployed up to 8” away from its deployment area, but no closer than 4” to an objective.</description>
    </rule>
    <rule name="Unstoppable (1SC)" id="94fd-8660-e5c3-c3d7" hidden="false">
      <description>1SC: Each strike the model makes this turn requires 2 successful Blocks to successfully defend against.</description>
      <alias>Unstoppable</alias>
    </rule>
    <rule name="Veteran" id="4f0c-111f-5783-88c7" hidden="false">
      <description>At the beginning of its activation, this model 
can reallocate up to 2 Action Counters on its 
Character Card.</description>
    </rule>
    <rule name="Weapon Master" id="a4bf-1814-b7b3-14fa" hidden="false">
      <description>This model benefits from a +1 bonus to Hit rolls when making close combat attacks, as long as it is not Unarmed.</description>
    </rule>
    <rule name="Mastermind" id="96ca-9d5f-9b86-ff7e" hidden="false">
      <description>Before the start of the game, add 1 extra die or counter representing your crew to the bag or container you use to Take the Lead.</description>
    </rule>
    <rule name="Deadly Strike (1SC)" id="4c3a-fd4e-347d-eb5d" hidden="false">
      <alias>Deadly Strike</alias>
      <description>1SC: Once this trait is activated, for the rest of the round this model gains CRT: Casualty on all its Close Combats Attack Actions.</description>
    </rule>
    <rule name="Immortal" id="1be9-b49c-71ce-2d03" hidden="false">
      <description>This model doesn’t award VPs to opponents when it is removed as a Casualty.</description>
    </rule>
    <rule name="Persuasive (1AC+1SC)" id="edb9-92a5-68ff-a712" hidden="false">
      <description>1AC+1SC: At the end of this model’s activation, nominate any enemy model yet to activate this round and in Line of Sight. That model must be the next to activate. The opponent can’t use a Pass to ignore this rule. A model can use this trait once per round.</description>
      <alias>Persuasive</alias>
    </rule>
    <rule name="Sustained Defense" id="653e-7ca9-9205-785e" hidden="false">
      <description>This model may roll 3 Block dice for every 2DC spent.</description>
    </rule>
    <rule name="Climbing Claws" id="6879-fa33-84f0-1dbc" hidden="false">
      <description>This model never suffers Impaired Movement when Climbing. In addition, the model may end its movement at any point on a climbable surface, such as on the side of a wall. Make the model’s end position clear to the opposing player if it is not possible to physically place the model there.</description>
    </rule>
    <rule name="Confusion (2SC)" id="7bda-2f07-1fb6-bfdc" hidden="false">
      <description>2SC: Once per round, this model can target a non-vehicle enemy model within its line of sight, and no further than 8” away. Reduce the target model’s Attack and Defense ratings by 1. Also, the target cannot spend SC this round. Both effects last until the end of the round.</description>
      <alias>Confusion</alias>
    </rule>
    <rule name="Unpredictible" id="84f7-de2f-5332-b782" hidden="false">
      <description>This model’s SC are wildcards. It may spend Special Counters on any other skill or action, immediately converting them into the appropriate type of counter for that action. When converted, the counters do not count towards the maximum counters the model may hold in any particular skill.</description>
    </rule>
    <rule name="Tracking (2SC)" id="5d17-abb6-c02f-ced1" hidden="false">
      <alias>Tracking</alias>
      <description>2SC: At the end of the Recount phase, this model can move up to 1D6 inches, using the rules for normal movement (but with no cost in MC).</description>
    </rule>
    <rule name="Adaptable" id="da01-18af-7b3a-1d60" hidden="false">
      <description>At the beginning of the Raise the Plan phase, the player controlling this model must choose between the Attack, Defense or Movement basic skills. The model receives +1 to the chosen skill until the end of the round.</description>
    </rule>
    <rule name="A Challenge for You" id="26ec-6291-c4e1-379e" hidden="false">
      <description>At the start of the game (before taking the lead) you can switch the position of two enemy Objective markers of any kind.</description>
    </rule>
    <rule name="Absolute Power" id="1766-a647-e27c-91d5" hidden="false">
      <description>If this model is your crew’s Boss, you can hire Henchmen with the Cop trait, regardless of their Affiliation.</description>
    </rule>
    <rule name="Addict" id="71d2-94a5-d833-40d1" hidden="false">
      <description>This model may use Doses (of any kind) belonging to a friendly model in contact, as if the Dose were its own.</description>
    </rule>
    <rule name="Affinity (Model)" id="a9bb-127b-fd56-7453" hidden="false">
      <description>This model shares a special affinity with another character. This model can be recruited as a Free Agent by the crew that includes the model named in parentheses. S/he may be recruited by that crew even if they have the Leader or Sidekick rank, and the crew already includes its maximum number of those ranks (this model’s rank is effectively changed to Free agent for the purposes of configuring the crew). Recruiting this model does not allow a further use of the trait (if, for example, another character has an Affinity to this model).</description>
    </rule>
    <rule name="Aggressive Schizophrenia (Mental Disorder)" id="f1b2-c975-7054-e0f1" hidden="false">
      <description>If this model is in contact with another model (friend or foe) at the beginning of its activation, they must attack – they take a single close combat strike against each model in contact, at no cost in AC. Once the attack is resolved, this model may continue its turn normally. This attack doesn’t count to the limit a model can make during an activation.</description>
    </rule>
    <rule name="Air Support (2SC)" id="c0a0-e6fc-e4c6-3068" hidden="false">
      <description>2SC: Place the Explosion template anywhere on the table. During this round, the area under the template is considered to be under the effect of Lights.</description>
      <alias>Air Support</alias>
    </rule>
    <rule name="Amazon" id="4d9a-62e1-aa74-7fd0" hidden="false">
      <description>This model receives a +1 bonus to its Hit and Block rolls. In addition, Damage rolls against this model suffer a -1 penalty.</description>
    </rule>
    <rule name="Amazon Lineage" id="91c7-c28e-f64c-0607" hidden="false">
      <description>If this model is your crew’s Boss, you can only recruit models with Affiliation: Amazons of Themyscira.</description>
    </rule>
    <rule name="Amazon Princess" id="201b-3bd1-1410-32b3" hidden="false">
      <description>This model can use the Charge special attack, paying only 1SC. The targets of this special attack incur a -1 penalty to their dice rolls to block it. While this Upgrade Character Card is added to Wonder Woman, she cannot use the Bracelets of Submission trait or the Lasso of Hestia weapon, and does not benefit from the effects of her Magic Shield.</description>
    </rule>
    <rule name="Amphibious" id="d584-a099-7bff-2550" hidden="false">
      <description>This model does not suffer Impaired Movement when moving through Difficult Ground elements that are considered water (i.e. rivers, swamps, canals, ponds, etc.). This Model can enter a Sewer by spending only 1MC.</description>
    </rule>
    <rule name="Anger Management (Mental disorder)" id="8ad4-1027-c9bc-ac1e" hidden="false">
      <description>When performing a ranged attack, this model must always select the closest model in line of sight, friend or foe, as the target.</description>
    </rule>
    <rule name="Animal" id="8209-cc9c-50b0-f794" hidden="false">
      <description>This model gains a bonus of +2” to its basic move distance. When it moves, it can ignore obstacles up to 2” high, but cannot Climb or Jump. If this model suffers the Fire effect, at the beginning of the Recount phase (before resolving the effect) make a Willpower roll (which cannot be rerolled). If this roll is failed, the model cannot move in the following round.</description>
    </rule>
    <rule name="Archie" id="303d-ae0f-a68d-fbbd" hidden="false">
      <description>This model is not deployed as normal at the start of the game. Once per game, at the start of the Raise the Plan phase of any round, you may place this model anywhere on the table that is not inside a building, as long as there is enough space for the model’s base to fit.</description>
    </rule>
    <rule name="Arkham Asylum Doctor (1SC)" id="3f5a-e5a7-3f93-b643" hidden="false">
      <alias>Arkham Asylum Doctor</alias>
      <description>1SC: All friendly models with a Mental Disorder trait within 4” of this model (but not the activated model itself) gain 1 free additional Action Counter. This counter is immediately placed in Movement, Attack or Defense. This bonus counter may take the number of assigned Action Counters above the model’s normal maximum. This model can use this rule once per round.</description>
    </rule>
    <rule name="Arrest (1MC+1SC)" id="87fe-693a-11b8-34ac" hidden="false">
      <description>1MC+1SC: When in contact with a KO, non-vehicle model, this model may immediately remove the KO model from the game as a Casualty.</description>
    </rule>
    <rule name="Assistance" id="1bfe-8618-edf9-c2fa" hidden="false">
      <description>While a friendly Robin (Boy Wonder) is in play, this model gains +1 Willpower. If a friendly Robin (Boy Wonder) is removed as a Casualty, this model gains +1 Strength until the end of the game.</description>
    </rule>
    <rule name="Atomica" id="5564-c670-078c-5d06" hidden="false">
      <description>When this model attacks an enemy non-vehicle model, before rolling to hit, the enemy model must pass an Agility roll. If it fails, it suffers -1 Defense until the end of the round.</description>
    </rule>
    <rule name="Attorney’s Allegation (2SC)" id="779d-95f9-f623-5260" hidden="false">
      <description>2SC: One Use Only. All friendly Henchman within 8” gain 2 free Action Counters. These counters are immediately allocated to Movement, Attack, Defense or Special.</description>
    </rule>
    <rule name="Autorepair (X)" id="0025-ee1c-adf9-4666" hidden="false">
      <description>In the Recount phase after calculating VPs, this model rolls 1D6. On a result of X+ remove a Damage counter from this model.</description>
    </rule>
    <rule name="Aversion (Model)" id="4860-8a2f-c140-b34d" hidden="false">
      <description>This model cannot be hired in the same crew as the specified model.</description>
    </rule>
    <rule name="Backpack" id="7fb3-1048-9239-798d" hidden="false">
      <description>This model can move with a Loot Objective marker without paying the 1MC cost.</description>
    </rule>
    <rule name="Bat-Armor MK I" id="e8c6-993d-b39a-945b" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 5+ the hit is ignored.</description>
    </rule>
    <rule name="Bat-Armor MK II" id="b300-01ae-406e-f3c3" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 6+ the hit is ignored. In addition, this model gains +1” to its basic movement distance.</description>
    </rule>
    <rule name="Bat-Armor MK III" id="db55-a770-99bf-b2ca" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 5+ the hit is ignored. In addition, if this model has moved this activation, it can make close combat attacks against enemies up to 2” away in line of sight (ignore all traits that improve the model’s line of sight, such as Total Vision, for the purpose of these attacks).</description>
    </rule>
  </sharedRules>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Common Weapons" hidden="false" id="48fe-70de-f325-b2e2">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Katana" hidden="false" id="ce89-03b6-16f8-8f6a">
          <profiles>
            <profile name="Katana" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="b8c2-1f76-7fdd-c354">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Smoke Grenade" hidden="false" id="5427-b1dc-0c3e-0bce">
          <profiles>
            <profile name="Smoke Grenade" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="5cbe-8b06-8f34-1cf2">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">-</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Explosive, Mechanical, Smoke, Grenade</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bow" hidden="false" id="f304-7da2-71ff-2452">
          <profiles>
            <profile name="Bow" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1a17-b036-d0a4-cb36">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, Aim</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Throwing Knives" hidden="false" id="4525-3dcf-935c-803c">
          <profiles>
            <profile name="Throwing Knives" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="5eb7-aa32-1611-6101">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Sharp, Throwing</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Knives" hidden="false" id="1a61-f961-d003-9e73">
          <profiles>
            <profile name="Knives" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="e5cd-0c95-6a61-6fde">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Sword" hidden="false" id="4740-3522-b86e-e269">
          <profiles>
            <profile name="Sword" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="e209-f5ee-346b-503e">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Knife" hidden="false" id="2af6-1438-c06d-6378">
          <profiles>
            <profile name="Knife" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="1a5a-cb31-2302-ab62">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Assault Rifle" hidden="false" id="5487-abf6-a1cf-b76d">
          <profiles>
            <profile name="Assault Rifle" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="052b-49c3-3dc8-9937">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Axe" hidden="false" id="b896-cde2-09a3-1872">
          <profiles>
            <profile name="Axe" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7206-09c9-ea13-08b2">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Automatic Gun" hidden="false" id="0837-9f47-7129-0685">
          <profiles>
            <profile name="Automatic Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1d60-c802-45a9-3efa">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, Light</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
  </sharedSelectionEntries>
  <costTypes>
    <costType name=" Dollar" id="b5b3-aa8b-4d9c-5673" defaultCostLimit="-1"/>
    <costType name="Reputation" id="99c9-f5c8-7271-b9c6" defaultCostLimit="-1"/>
  </costTypes>
  <profileTypes>
    <profileType name="Identifier" id="9d0f-e155-f058-1c47" hidden="false">
      <characteristicTypes>
        <characteristicType name="Name" id="1ef1-a21d-012a-e008"/>
        <characteristicType name="Alias" id="324e-541d-263d-736b"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Statistics" id="6ba8-3e9b-e9ec-4fc1" hidden="false">
      <characteristicTypes>
        <characteristicType name="Willpoints" id="72c9-ec3f-8c3e-6edf"/>
        <characteristicType name="Strength" id="b7df-0e7d-5dd4-1a2f"/>
        <characteristicType name="Movement" id="926c-cb61-0860-4a75"/>
        <characteristicType name="Attack" id="dd2a-10f4-717a-4bc1"/>
        <characteristicType name="Defense" id="772d-9054-3e95-2611"/>
        <characteristicType name="Special" id="332e-5255-7c9b-115f"/>
        <characteristicType name="Endurance" id="b01b-8d00-8a94-dfe8"/>
        <characteristicType name="Traits" id="072b-9b59-7b27-0de0"/>
      </characteristicTypes>
    </profileType>
    <profileType name="CC Weapon" id="8753-fb9c-9080-5b6d" hidden="false">
      <characteristicTypes>
        <characteristicType name="Damage" id="b6ca-2a6b-06bb-8095"/>
        <characteristicType name="Weapon Traits" id="2afb-1ec3-9d1e-cf96"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="b013-c352-bbf7-acfa" hidden="false">
      <characteristicTypes>
        <characteristicType name="Damage" id="3402-b871-7b53-7064"/>
        <characteristicType name="ROF" id="35c1-c8d6-1c79-eee3"/>
        <characteristicType name="Ammo" id="4275-3182-fcf5-8a8c"/>
        <characteristicType name="Weapon Traits" id="d571-2ae9-4a98-8baf"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Equipment" id="0941-0f5b-a95b-5c38" hidden="false">
      <characteristicTypes>
        <characteristicType name="Rules" id="dadd-d641-527c-1d93"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
</gameSystem>
